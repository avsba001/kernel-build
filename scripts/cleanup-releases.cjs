'use strict';

// The complete profile is part of the identity: Intel and AMD are never grouped.
const BUILD_TAG = /^xanmod-cloud-(\d+\.\d+(?:\.\d+)?)-(v[23]-(?:intel|amd))-(\d+)$/;

function planCleanup(releases, { version = '', profile = '' } = {}) {
  const groups = new Map();
  for (const release of releases) {
    const match = BUILD_TAG.exec(release.tag_name || '');
    if (!match || release.draft || release.prerelease) continue;
    const [, kernel, cpu, run] = match;
    if ((version && kernel !== version) || (profile && cpu !== profile)) continue;
    const key = `${kernel}-${cpu}`;
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push({ release, run: BigInt(run) });
  }

  const keep = [];
  const remove = [];
  for (const group of groups.values()) {
    // Run IDs reflect build order, even when an older build finishes later.
    group.sort((a, b) => a.run === b.run
      ? Number(b.release.id) - Number(a.release.id)
      : a.run > b.run ? -1 : 1);
    keep.push(group[0].release);
    remove.push(...group.slice(1).map(item => item.release));
  }
  return { keep, remove };
}

async function cleanup({ github, context, core, version = '', profile = '', dryRun = false }) {
  const repo = context.repo;
  const releases = await github.paginate(github.rest.repos.listReleases, {
    ...repo, per_page: 100,
  });
  const plan = planCleanup(releases, { version, profile });
  for (const release of plan.keep) core.info(`保留 Release：${release.tag_name}`);
  for (const release of plan.remove) {
    core.info(`${dryRun ? '[预览] ' : ''}删除重复 Release 及 tag：${release.tag_name}`);
    if (dryRun) continue;
    await github.rest.repos.deleteRelease({ ...repo, release_id: release.id });
    try {
      await github.rest.git.deleteRef({ ...repo, ref: `tags/${release.tag_name}` });
    } catch (error) {
      if (error.status !== 404) throw error;
    }
  }
  // Do not delete orphan tags: a release upload may still be in progress.
  return plan;
}

module.exports = { planCleanup, cleanup };

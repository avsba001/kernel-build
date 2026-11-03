'use strict';
const { test } = require('node:test');
const assert = require('node:assert/strict');
const { planCleanup, cleanup } = require('./cleanup-releases.cjs');
const release = (id, version, profile, run, extra = {}) => ({
  id, tag_name: `xanmod-cloud-${version}-${profile}-${run}`, ...extra,
});

test('retain exactly one build per series and full profile, independent of API order and completion time', () => {
  const data = [];
  for (const version of ['6.12', '7.2']) {
    for (const profile of ['v2-intel', 'v2-amd', 'v3-intel', 'v3-amd']) {
      data.push(release(data.length + 1, version, profile, '100', { published_at: '2026-11-03' }));
      data.push(release(data.length + 1, version, profile, '101', { published_at: '2026-11-01' }));
      data.push(release(data.length + 1, version, profile, '99'));
    }
  }
  const plan = planCleanup(data.reverse());
  assert.equal(plan.keep.length, 8);
  assert.equal(plan.remove.length, 16);
  assert.ok(plan.keep.every(item => item.tag_name.endsWith('-101')));
});

test('targeted cleanup skips other profiles, series, drafts, prereleases and unknown tags', () => {
  const data = [release(1, '7.2', 'v3-intel', 100), release(2, '7.2', 'v3-intel', 101),
    release(3, '7.2', 'v3-amd', 99), release(4, '6.12', 'v3-intel', 99),
    release(5, '7.2', 'v3-intel', 102, { draft: true }),
    release(6, '7.2', 'v3-intel', 103, { prerelease: true }),
    { id: 7, tag_name: 'unrelated', name: 'XanMod Cloud 7.2 v3-intel' }];
  assert.deepEqual(planCleanup(data, { version: '7.2', profile: 'v3-intel' }).remove.map(r => r.id), [1]);
});

function harness({ dryRun = false, deleteFails = false } = {}) {
  const calls = [];
  const github = {
    paginate: async () => [release(1, '7.2', 'v3-intel', 100), release(2, '7.2', 'v3-intel', 101)],
    rest: {
      repos: { listReleases: {}, deleteRelease: async () => {
        calls.push('release');
        if (deleteFails) throw new Error('denied');
      } },
      git: { deleteRef: async () => calls.push('tag') },
    },
  };
  return { calls, run: () => cleanup({ github, context: { repo: { owner: 'test', repo: 'test' } },
    core: { info() {} }, dryRun }) };
}

test('dry run makes no mutations', async () => {
  const h = harness({ dryRun: true });
  await h.run();
  assert.deepEqual(h.calls, []);
});

test('delete release before corresponding tag', async () => {
  const h = harness();
  await h.run();
  assert.deepEqual(h.calls, ['release', 'tag']);
});

test('failed release deletion must not delete its tag', async () => {
  const h = harness({ deleteFails: true });
  await assert.rejects(h.run(), /denied/);
  assert.deepEqual(h.calls, ['release']);
});

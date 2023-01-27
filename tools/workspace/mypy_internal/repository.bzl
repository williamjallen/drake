# -*- python -*-

load("@drake//tools/workspace:github.bzl", "github_archive")

def mypy_internal_repository(
        name,
        mirrors = None):
    github_archive(
        name = name,
        # This dependency is part of a "cohort" defined in
        # drake/tools/workspace/new_release.py.  When practical, all members
        # of this cohort should be updated at the same time.
        repository = "python/mypy",
        commit = "v0.991",
        sha256 = "a88d446622657e5ef455e9e3a1693c6732a5b8311a17bec90ba103c8e39db3d5",  # noqa
        build_file = ":package.BUILD.bazel",
        patches = [
            ":patches/timeout.patch",
        ],
        mirrors = mirrors,
    )

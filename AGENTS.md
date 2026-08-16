# @totto2727/geo

## Repository structure

```text
src/geo/2d/type/       Geometry primitives and type-level traits
src/geo/2d/            Planar and geographic algorithms
src/robust/            Robust orient2d and incircle predicates
src/rtree/             R-tree spatial index
docs/api-correspondence/  Upstream Rust API correspondence notes
README.mbt.md          Canonical end-user README and checked usage example
README.md              Relative symlink to README.mbt.md
```

## Development commands

### Execution rules

- Run commands from the repository root.
- Enter the Nix development shell with `nix develop` before running the MoonBit toolchain when the shell is not already active.
- Read the `mbt-coding` and `mbt-test` skills before changing MoonBit source or documentation tests.
- Keep `README.mbt.md` canonical and preserve `README.md -> README.mbt.md` as a relative symbolic link; do not create a second README.
- Keep committed source, configuration, and documentation in English. Use Japanese only for collaboration handoffs and review discussion.
- Resolve released dependencies from Mooncakes; do not add local overlays or path dependencies for consumer-facing validation.

### Standard tasks

- `moon info` — Regenerate package interfaces after public API changes.
- `moon check` — Type-check all source packages and documentation examples discovered by the workspace.
- `moon test` — Run all package tests and checked MoonBit documentation examples.
- `moon check README.mbt.md` — Check the canonical README path; the module has no root `moon.pkg`, so this command is a no-op after the workspace is up to date.
- `moon test src/geo/2d` — Run the algorithm package tests and its checked documentation examples.
- `moon package --list` — List packages that are eligible for publication.
- `git diff --check` — Reject whitespace errors before handoff.

## Architecture

### Module packages

- `totto2727/geo/geo/2d/type` owns the 2D geometry value types and their local traits.
- `totto2727/geo/geo/2d` owns algorithms and cross-type traits over the geometry package, including planar and geographic metrics.
- `totto2727/geo/robust` provides adaptive-precision predicates used by topology and triangulation algorithms.
- `totto2727/geo/rtree` provides a bounding-rectangle index used by indexed algorithms and clustering.

### API documentation

- Mooncakes is the canonical generated API index for the published module; keep the end-user README in registry mode and link to the package API pages.
- Document caller-visible behavior for public declarations with `///` comments. Put representative executable examples in `///` `check` blocks or the matching `.mbt.md` documentation file.
- Keep examples aligned with the package aliases and constructors used by the source packages. Run the relevant `moon check` and `moon test` commands after changing documentation examples.

### Scope and target policy

- The implementation is 2D and uses `Double` coordinates only; 3D coordinate support is out of scope.
- Planar algorithms use Euclidean geometry. Geographic algorithms use their documented spherical or ellipsoidal metric and return distances or areas in meters-based units.
- Geodesic Karney calculations remain deferred; do not describe them as supported without a corresponding implementation and checked example.

## Development tools

- **MoonBit**: Builds, checks, tests, formats, and publishes the module.
- **Mooncakes**: Resolves released dependencies and hosts generated package API documentation.
- **Nix flakes**: Provide the reproducible development environment.
- **GitHub Actions**: Run the repository's shared MoonBit validation workflow.

## Package-specific rules

- Update `moon.mod` metadata, interfaces, and documentation together when changing the public API.
- Preserve the upstream correspondence notes under `docs/api-correspondence/` when porting or renaming APIs.
- Do not add a separate `CLAUDE.md`; `AGENTS.md` is the sole agent/developer guidance document for this repository.

_This AGENTS.md was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [AGENTS template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/agents/template.md)._

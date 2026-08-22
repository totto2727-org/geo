# @totto2727/geo

`@totto2727/geo` is a MoonBit port of [georust/geo](https://georust.org/) for two-dimensional planar and geographic geometry. It publishes dedicated packages for geometry values, algorithms, robust predicates, and R-tree indexing; coordinates use `Double` and 3D geometry is outside the module scope.

This document is canonical `README.mbt.md`; maintain `README.md` as the relative symlink `README.md -> README.mbt.md`.

## Usage

Add the module, then import the package that owns the API you need.

```bash
moon add totto2727/geo@0.1.3
```

Read the package-local usage guides for [2D algorithms](./src/geo/2d/README.mbt.md), [geometry types](./src/geo/2d/type/README.mbt.md), [robust predicates](./src/robust/README.mbt.md), and the [R-tree index](./src/rtree/README.mbt.md).

## Key features

- `totto2727/geo/geo/2d/type` provides `Coord`, `Point`, `LineString`, `Polygon`, multi-geometries, `Rect`, `Triangle`, and `Geometry`.
- `totto2727/geo/geo/2d` provides planar and geographic measurement, topology, transformation, simplification, boolean, triangulation, and clustering algorithms.
- `totto2727/geo/robust` provides adaptive `orient2d` and `incircle` predicates for topology-sensitive operations.
- `totto2727/geo/rtree` provides bulk loading, mutation, rectangle queries, nearest queries, and iteration over spatial entries.

## Prerequisites

- **MoonBit**: Install the MoonBit toolchain.
- **Mooncakes**: Resolve the published module and browse its generated API documentation.

## Setup

1. Add `totto2727/geo` to the consumer project.

```bash
moon add totto2727/geo@0.1.3
```

2. Add the required package import to the consumer package's `moon.pkg`, then follow its linked package README for a checked example.

## API

Mooncakes is the canonical generated API index. See the [module page](https://mooncakes.io/docs/totto2727/geo), [2D algorithms](https://mooncakes.io/docs/totto2727/geo/geo/2d), [geometry types](https://mooncakes.io/docs/totto2727/geo/geo/2d/type), [robust predicates](https://mooncakes.io/docs/totto2727/geo/robust), and [R-tree](https://mooncakes.io/docs/totto2727/geo/rtree) pages.

## Development

For repository structure, development commands, and package documentation-test guidance, see [AGENTS.md](./AGENTS.md).

## License

MIT. See [LICENSE](./LICENSE).

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

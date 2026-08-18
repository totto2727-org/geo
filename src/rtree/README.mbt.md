# @totto2727/geo/rtree

`totto2727/geo/rtree` is an R-tree spatial index for values associated with two-dimensional bounding rectangles. It supports bulk loading, insertion and removal, rectangular and point queries, nearest queries, iteration, and draining.

The module overview is [../../README.mbt.md](../../README.mbt.md).

## Usage

```mbt check
///|
test "query a bulk-loaded spatial index" {
  let entry = Entry::Entry(
    @type.Rect::Rect(@type.Coord(0.0, 0.0), @type.Coord(1.0, 1.0)),
    "origin",
  )
  let tree = RTree::bulk_load([entry])
  @test.assert_eq(tree.query_nearest(@type.Coord(0.5, 0.5)), Some("origin"))
}
```

## Key features

- `RTree::bulk_load` and `RTree::new` create indexes for static and incremental data.
- Rectangle, point, distance, and nearest queries select values by their bounding rectangles.
- Mutation, iteration, and draining support long-lived spatial collections.

## Prerequisites

- **MoonBit**: Install the MoonBit toolchain.
- **Geometry types**: Import `totto2727/geo/geo/2d/type` alongside this package.

## Setup

1. Add the module to a MoonBit project.

```bash
moon add totto2727/geo@0.1.2
```

2. Import `totto2727/geo/rtree` and `totto2727/geo/geo/2d/type` in the consumer package's `moon.pkg`.

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/rtree)

## Development

For repository commands and documentation-test guidance, see [AGENTS.md](../../AGENTS.md). For algorithm helpers that use this index, see the [2D algorithms README](../geo/2d/README.mbt.md).

## License

MIT. See [LICENSE](../../LICENSE).

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

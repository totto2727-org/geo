# @totto2727/geo/rtree

`totto2727/geo/rtree` owns the R-tree spatial index for values associated with two-dimensional bounding rectangles, including bulk loading, mutation, rectangle and nearest queries, iteration, and draining.

## Usage

Index service areas and return the depot closest to a delivery coordinate:

```mbt check
///|
test "find the nearest depot" {
  let depots = [
    Entry::Entry(
      @type.Rect::Rect(@type.Coord(0.0, 0.0), @type.Coord(1.0, 1.0)),
      "west depot",
    ),
    Entry::Entry(
      @type.Rect::Rect(@type.Coord(10.0, 10.0), @type.Coord(11.0, 11.0)),
      "east depot",
    ),
  ]
  let index = RTree::bulk_load(depots)
  @test.assert_eq(index.query_nearest(@type.Coord(9.5, 9.5)), Some("east depot"))
}
```

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/rtree)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

# @totto2727/geo/geo/2d/type

`totto2727/geo/geo/2d/type` owns the concrete two-dimensional geometry values consumed by `totto2727/geo/geo/2d`, including points, lines, polygons, collections, rectangles, triangles, and the `Geometry` sum type.

## Usage

Normalize clockwise survey vertices before handing a closed boundary to a polygon consumer:

```mbt check
///|
test "normalize a triangle boundary" {
  let triangle = Triangle::ccw(
    Coord(0.0, 0.0),
    Coord(0.0, 6.0),
    Coord(4.0, 0.0),
  )
  let boundary = triangle.to_polygon().exterior().coords()
  @test.assert_eq(boundary, [
    Coord(0.0, 0.0),
    Coord(4.0, 0.0),
    Coord(0.0, 6.0),
    Coord(0.0, 0.0),
  ])
}
```

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/geo/2d/type)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

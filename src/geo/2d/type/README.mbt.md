# @totto2727/geo/geo/2d/type

`totto2727/geo/geo/2d/type` provides the concrete two-dimensional geometry values consumed by `totto2727/geo/geo/2d` algorithms. Its immutable `Double`-coordinate values cover points, lines, polygons, collections, rectangles, triangles, and the `Geometry` sum type.

The module overview is [../../../../README.mbt.md](../../../../README.mbt.md).

## Usage

```mbt check
///|
test "convert a triangle boundary to a closed polygon" {
  let triangle = Triangle::ccw(
    Coord(0.0, 0.0),
    Coord(0.0, 6.0),
    Coord(4.0, 0.0),
  )
  let polygon = triangle.to_polygon()
  @test.assert_eq(polygon.exterior().coords(), [
    Coord(0.0, 0.0),
    Coord(4.0, 0.0),
    Coord(0.0, 6.0),
    Coord(0.0, 0.0),
  ])
}
```

## Key features

- `Coord` and `Point` provide scalar-coordinate construction and arithmetic.
- `Line`, `LineString`, `Polygon`, and their multi-value counterparts represent linear and areal shapes.
- `Rect`, `Triangle`, `GeometryCollection`, and `Geometry` model bounded and heterogeneous geometry.

## Prerequisites

- **MoonBit**: Install the MoonBit toolchain.
- **Algorithms**: Add `totto2727/geo/geo/2d` when calculations beyond value construction are needed.

## Setup

1. Add the module to a MoonBit project.

```bash
moon add totto2727/geo@0.1.2
```

2. Import `totto2727/geo/geo/2d/type` in the consumer package's `moon.pkg`.

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/geo/2d/type)

## Development

For repository commands and documentation-test guidance, see [AGENTS.md](../../../../AGENTS.md). For algorithms over these values, see the [2D algorithms README](../README.mbt.md).

## License

MIT. See [LICENSE](../../../../LICENSE).

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

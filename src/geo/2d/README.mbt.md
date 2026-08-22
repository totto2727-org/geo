# @totto2727/geo/geo/2d

`totto2727/geo/geo/2d` implements planar and geographic algorithms over the values in `totto2727/geo/geo/2d/type`. Use it for measurements, topology, transforms, hulls, simplification, boolean operations, buffering, triangulation, and clustering rather than as the module-wide entrypoint.

The module overview is [../../../README.mbt.md](../../../README.mbt.md).

## Usage

```mbt check
///|
test "polygon area and centroid" {
  let polygon = @type.Polygon::Polygon(
    @type.LineString::from_tuples([
      (0.0, 0.0),
      (10.0, 0.0),
      (10.0, 10.0),
      (0.0, 10.0),
      (0.0, 0.0),
    ]),
    [],
  )
  @test.assert_eq(HasArea::unsigned_area(polygon), 100.0)
  @test.assert_eq(
    HasCentroid::centroid(polygon),
    Some(@type.Point::from_tuple((5.0, 5.0))),
  )
}
```

## Key features

- Planar area, distance, centroid, bounding rectangle, containment, intersection, relation, and validation traits for geometry values.
- Geographic Haversine, Vincenty, Rhumb, cross-track, densification, and Chamberlain-Duquette calculations.
- Geometry transforms, hulls, simplification, boolean operations, buffering, repair, triangulation, Voronoi, DBSCAN, and k-means.

## Prerequisites

- **MoonBit**: Install the MoonBit toolchain.
- **Geometry types**: Import `totto2727/geo/geo/2d/type` alongside this package.

## Setup

1. Add the module to a MoonBit project.

```bash
moon add totto2727/geo@0.1.3
```

2. Import `totto2727/geo/geo/2d` and `totto2727/geo/geo/2d/type` in the consumer package's `moon.pkg`.

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/geo/2d)

## Development

For repository commands and documentation-test guidance, see [AGENTS.md](../../../AGENTS.md). For values and constructors, see the [geometry types README](./type/README.mbt.md).

## License

MIT. See [LICENSE](../../../LICENSE).

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

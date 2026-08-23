# @totto2727/geo/geo/2d

`totto2727/geo/geo/2d` owns planar and geographic algorithms over the values in `totto2727/geo/geo/2d/type`, including measurements, topology, transforms, hulls, simplification, boolean operations, buffering, triangulation, and clustering.

## Usage

Measure a parcel boundary and calculate its centre for placing a label:

```mbt check
///|
test "measure a parcel boundary" {
  let parcel = @type.Polygon::Polygon(
    @type.LineString::from_tuples([
      (0.0, 0.0),
      (10.0, 0.0),
      (10.0, 10.0),
      (0.0, 10.0),
      (0.0, 0.0),
    ]),
    [],
  )
  @test.assert_eq(HasArea::unsigned_area(parcel), 100.0)
  @test.assert_eq(
    HasCentroid::centroid(parcel),
    Some(@type.Point::from_tuple((5.0, 5.0))),
  )
}
```

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/geo/2d)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

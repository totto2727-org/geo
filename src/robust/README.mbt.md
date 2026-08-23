# @totto2727/geo/robust

`totto2727/geo/robust` owns orientation and incircle predicates for topology and triangulation code that must distinguish counter-clockwise, clockwise, collinear, inside-circle, and outside-circle relationships.

## Usage

Classify a turn before choosing a topology branch:

```mbt check
///|
test "classify a left turn" {
  let determinant = orient2d(
    @type.Coord(0.0, 0.0),
    @type.Coord(1.0, 0.0),
    @type.Coord(0.0, 1.0),
  )
  @test.assert_eq(determinant > 0.0, true)
}
```

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/robust)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

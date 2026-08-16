# @totto2727/geo/robust

`totto2727/geo/robust` provides orientation and incircle predicates for two-dimensional coordinates. Use these predicates when topology or triangulation code must distinguish counter-clockwise, clockwise, collinear, inside-circle, and outside-circle relationships.

The module overview is [../../README.mbt.md](../../README.mbt.md).

## Usage

```mbt check
///|
test "orient counter-clockwise coordinates" {
  let determinant = orient2d(
    @type.Coord(0.0, 0.0),
    @type.Coord(1.0, 0.0),
    @type.Coord(0.0, 1.0),
  )
  @test.assert_eq(determinant > 0.0, true)
}
```

## Key features

- `orient2d` returns the signed orientation determinant for three coordinates.
- `incircle` returns the signed in-circle determinant for four coordinates.
- The predicates use the geometry `Coord` value type so they integrate with the rest of the module.

## Prerequisites

- **MoonBit**: Install the MoonBit toolchain.
- **Geometry types**: Import `totto2727/geo/geo/2d/type` alongside this package.

## Setup

1. Add the module to a MoonBit project.

```bash
moon add totto2727/geo@0.1.2
```

2. Import `totto2727/geo/robust` and `totto2727/geo/geo/2d/type` in the consumer package's `moon.pkg`.

## API

[Mooncakes API reference](https://mooncakes.io/docs/totto2727/geo/robust)

## Development

For repository commands and documentation-test guidance, see [AGENTS.md](../../AGENTS.md). For higher-level geometry algorithms, see the [2D algorithms README](../geo/2d/README.mbt.md).

## License

MIT. See [LICENSE](../../LICENSE).

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._

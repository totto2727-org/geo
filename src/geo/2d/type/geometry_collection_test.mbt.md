# geometry_collection.mbt

A heterogeneous collection of `Geometry` values, mirroring the GeoJSON `GeometryCollection`. Provides constructors (from a `Geometry` array, empty), the `geometries` accessor, and trait impls for `HasLength` / `IsEmpty` (callable via dot syntax such as `gc.length()` because the impls live next to the struct).

## Public API

- `GeometryCollection::GeometryCollection`
- `GeometryCollection::empty`
- `GeometryCollection::geometries`
- `HasLength`
  - `length`
- `IsEmpty`
  - `is_empty`
- `Eq` (derived)
- `Default` (derived)

## Test

### `GeometryCollection::GeometryCollection`

- Holds heterogeneous geometries

```mbt check
///|
test "GeometryCollection::GeometryCollection - simple initialization" {
  let gc = @type.GeometryCollection::GeometryCollection([
    @type.Geometry::Point(@type.Point::Point(1.0, 2.0)),
    @type.Geometry::Line(@type.Line::from_tuples((0.0, 0.0), (1.0, 1.0))),
  ])
  debug_inspect(
    gc,
    content=(
      #|{
      #|  geometries: [
      #|    Point({ coord: { x: 1, y: 2 } }),
      #|    Line({ start: { x: 0, y: 0 }, end: { x: 1, y: 1 } }),
      #|  ],
      #|}
    ),
  )
}
```

### `GeometryCollection::empty`

- Equivalent to `GeometryCollection::GeometryCollection([])`

```mbt check
///|
test "GeometryCollection::empty - equivalent to GeometryCollection([])" {
  @test.assert_eq(
    @type.GeometryCollection::empty(),
    @type.GeometryCollection::GeometryCollection([]),
  )
}
```

### `GeometryCollection::geometries`

- Returns the underlying `Geometry` array

```mbt check
///|
test "GeometryCollection geometries - returns underlying array" {
  let p = @type.Geometry::Point(@type.Point::Point(1.0, 2.0))
  let l = @type.Geometry::Line(@type.Line::from_tuples((0.0, 0.0), (1.0, 1.0)))
  let gc = @type.GeometryCollection::GeometryCollection([p, l])
  @test.assert_eq(gc.geometries(), [p, l])
}
```

### `HasLength`

#### `length`

- Returns the number of geometries (callable as `gc.length()` via dot syntax)

```mbt check
///|
test "GeometryCollection HasLength::length - returns number of geometries" {
  let gc = @type.GeometryCollection::GeometryCollection([
    @type.Geometry::Point(@type.Point::Point(1.0, 2.0)),
    @type.Geometry::Line(@type.Line::from_tuples((0.0, 0.0), (1.0, 1.0))),
  ])
  @test.assert_eq(gc.length(), 2)
  @test.assert_eq(@type.HasLength::length(gc), 2)
}
```

### `IsEmpty`

| Variable | State       | Note |  1  |  2  |
| :------- | :---------- | :--- | :-: | :-: |
| `self`   | `Non-empty` |      |  ✓  |     |
| `self`   | `Empty`     |      |     |  ✓  |

#### `is_empty`

- False when non-empty

```mbt check
///|
test "GeometryCollection IsEmpty::is_empty - false when non-empty" {
  let gc = @type.GeometryCollection::GeometryCollection([
    @type.Geometry::Point(@type.Point::Point(1.0, 2.0)),
  ])
  assert_false(gc.is_empty())
}
```

- True when empty

```mbt check
///|
test "GeometryCollection IsEmpty::is_empty - true when empty" {
  assert_true(@type.GeometryCollection::empty().is_empty())
}
```

### `Eq` (derived)

#### `op_equal`

- Equal and unequal geometry collections

```mbt check
///|
test "GeometryCollection Eq::op_equal - equal and unequal" {
  let p = @type.Geometry::Point(@type.Point::Point(1.0, 2.0))
  let q = @type.Geometry::Point(@type.Point::Point(3.0, 4.0))
  let a = @type.GeometryCollection::GeometryCollection([p])
  let b = @type.GeometryCollection::GeometryCollection([p])
  let c = @type.GeometryCollection::GeometryCollection([q])
  @test.assert_eq(a, b)
  @test.assert_not_eq(a, c)
}
```

### `Default` (derived)

#### `default`

- Default is empty

```mbt check
///|
test "GeometryCollection Default::default - is empty" {
  let d : @type.GeometryCollection = @type.GeometryCollection::default()
  @test.assert_eq(d, @type.GeometryCollection::empty())
}
```

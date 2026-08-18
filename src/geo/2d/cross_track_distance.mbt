// Ported from georust/geo
// https://github.com/georust/geo/blob/main/geo/src/algorithm/cross_track_distance.rs
//
// The cross-track distance (also known as cross-track error) is the shortest
// great-circle distance between a point `p` and a great circle that passes
// through `line_point_a` and `line_point_b`.
//
// Formula:
//   δ_xt = asin( sin(d_13 / R) * sin(θ_12 - θ_13) )
//   distance = R * |δ_xt|
// where
//   d_13 = haversine distance from `line_point_a` to `p`
//   θ_13 = haversine bearing from `line_point_a` to `p`
//   θ_12 = haversine bearing from `line_point_a` to `line_point_b`
//   R    = mean Earth radius (GRS80 mean radius is used here, matching
//          `geo`'s `MEAN_EARTH_RADIUS`).

///|
/// Cross-track distance from `p` to the great circle through `line_point_a`
/// and `line_point_b`. Uses the same mean-Earth radius as `Haversine()`
/// (GRS80 mean radius, 6_371_008.8 m). Result is in meters.
///
/// ```check
/// test "cross_track_distance - one degree off the equator" {
///   let p = @type.Point::from_tuple((1.0, 1.0))
///   let a = @type.Point::from_tuple((0.0, 0.0))
///   let b = @type.Point::from_tuple((2.0, 0.0))
///   let distance = cross_track_distance(p, a, b)
///   assert_true(distance > 100_000.0 && distance < 120_000.0)
/// }
/// ```
pub fn cross_track_distance(
  p : @type.Point,
  line_point_a : @type.Point,
  line_point_b : @type.Point,
) -> Double {
  let h = haversine()
  let r = h.radius
  let d_13 = h.distance(line_point_a, p) / r
  let theta_13 = h.bearing(line_point_a, p) * @math.PI / 180.0
  let theta_12 = h.bearing(line_point_a, line_point_b) * @math.PI / 180.0
  let delta_xt = @math.asin(@math.sin(d_13) * @math.sin(theta_12 - theta_13))
  r * delta_xt.abs()
}

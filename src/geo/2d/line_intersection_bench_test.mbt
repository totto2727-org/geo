// Benchmarks for line_intersection.mbt.

///|
test "bench: line_intersection crossing" (b : @bench.T) {
  let l1 = @type.Line::from_tuples((0.0, 0.0), (10.0, 10.0))
  let l2 = @type.Line::from_tuples((0.0, 10.0), (10.0, 0.0))
  b.bench(fn() { b.keep(@geo.line_intersection(l1, l2)) })
}

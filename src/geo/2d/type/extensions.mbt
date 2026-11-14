///|
pub extend Coord with Eq::{not_equal, equal}

///|
pub extend Coord with Debug::{to_repr}

///|
pub extend Coord with Hash::{hash, hash_combine}

///|
pub extend Coord with Default::{default}

///|
pub extend Coord with Neg::{neg}

///|
pub extend Coord with Add::{add}

///|
pub extend Coord with Sub::{sub}

///|
pub extend Geometry with Eq::{not_equal, equal}

///|
pub extend Geometry with Debug::{to_repr}

///|
pub extend MismatchedGeometry with Eq::{not_equal, equal}

///|
pub extend MismatchedGeometry with Debug::{to_repr}

///|
pub extend GeometryCollection with Eq::{not_equal, equal}

///|
pub extend GeometryCollection with Debug::{to_repr}

///|
pub extend GeometryCollection with Default::{default}

///|
pub extend Line with Eq::{not_equal, equal}

///|
pub extend Line with Debug::{to_repr}

///|
pub extend Line with Hash::{hash, hash_combine}

///|
pub extend LineString with Eq::{not_equal, equal}

///|
pub extend LineString with Debug::{to_repr}

///|
pub extend LineString with Default::{default}

///|
pub extend MultiLineString with Eq::{not_equal, equal}

///|
pub extend MultiLineString with Debug::{to_repr}

///|
pub extend MultiLineString with Default::{default}

///|
pub extend MultiPoint with Eq::{not_equal, equal}

///|
pub extend MultiPoint with Debug::{to_repr}

///|
pub extend MultiPoint with Default::{default}

///|
pub extend MultiPolygon with Eq::{not_equal, equal}

///|
pub extend MultiPolygon with Debug::{to_repr}

///|
pub extend MultiPolygon with Default::{default}

///|
pub extend Point with Eq::{not_equal, equal}

///|
pub extend Point with Debug::{to_repr}

///|
pub extend Point with Hash::{hash, hash_combine}

///|
pub extend Point with Default::{default}

///|
pub extend Point with Neg::{neg}

///|
pub extend Point with Add::{add}

///|
pub extend Point with Sub::{sub}

///|
pub extend Polygon with Eq::{not_equal, equal}

///|
pub extend Polygon with Debug::{to_repr}

///|
pub extend Rect with Eq::{not_equal, equal}

///|
pub extend Rect with Debug::{to_repr}

///|
pub extend Rect with Hash::{hash, hash_combine}

///|
pub extend Triangle with Eq::{not_equal, equal}

///|
pub extend Triangle with Debug::{to_repr}

///|
pub extend Triangle with Hash::{hash, hash_combine}

import 'dart:collection';

/// assoc[iate]. Returns a new map of the same (hashed/sorted) type,
/// that contains the mapping of key to val.
assoc(m, key, val) {
  if (m is List) {
    return new UnmodifiableListView(new List.from(m)..insert(key, val));
  } else if (m is Map) {
    return new UnmodifiableMapView(new Map.from(m)..[key] = val);
  }

  throw ArgumentError("Unsupported type ${m.runtimeType}");
}

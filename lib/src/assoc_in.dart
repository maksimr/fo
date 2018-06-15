import 'package:fo/fo.dart' show assoc;

/// Associates a value in a nested associative structure, where ks is a
/// sequence of keys and v is the new value and returns a new nested structure.
/// If any levels do not exist, hash-maps will be created.
assocIn(m, List ks, v) {
  final propName = ks[0];
  if (ks.length > 1) {
    return assoc(
        m,
        propName,
        assocIn(
            m[propName] ?? new Map(), ks.getRange(1, ks.length).toList(), v));
  }
  return assoc(m, propName, v);
}

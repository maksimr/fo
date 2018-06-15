// Returns the value in a nested associative structure,
// where ks is a sequence of keys. Returns null if the key
// is not present, or the not-found value if supplied.
getIn(dynamic m, List ks, [notFound]) {
  for (var propName in ks) {
    if (m == null) return notFound;
    if (m is List) {
      if (propName >= m.length) return notFound;
      m = m[propName];
      continue;
    } else if (m is Map) {
      if (!m.containsKey(propName)) return notFound;
      m = m[propName];
      continue;
    } else {
      return notFound;
    }
  }
  return m;
}

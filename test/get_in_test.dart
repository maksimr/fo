import 'package:fo/fo.dart' show getIn;
import 'package:test/test.dart';

void main() {
  group('getIn', () {
    test('should return value for Map', () {
      final m = new Map();
      m["A"] = "AAA";
      expect(getIn(m, ["A"]), m["A"]);
    });

    test('should return value for nested Map', () {
      final m = new Map();
      m["A"] = new Map();
      m["A"]["B"] = "BBB";
      expect(getIn(m, ["A", "B"]), m["A"]["B"]);
    });

    test('should return value for List', () {
      final List m = ["AAA"];
      expect(getIn(m, [0]), m[0]);
    });

    test('should return value for nested List', () {
      final List m = [];
      m.add(["AAA"]);
      expect(getIn(m, [0, 0]), m[0][0]);
    });

    test('should return default value if no value presented in a list', () {
      final List m = [];
      expect(getIn(m, [0, 0], "AAA"), "AAA");
    });
  });
}

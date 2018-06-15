import 'package:fo/fo.dart' show assocIn;
import 'package:test/test.dart';

void main() {
  group('assocIn', () {
    test('should set value to Map and return new Map', () {
      final m = new Map();
      final mm = assocIn(m, ["A", "B"], "BBB");

      expect(mm["A"]["B"], "BBB");
      expect(m.keys.length, 0);
    });

    test('should set value to List and return new List', () {
      final m = new List();
      final mm = assocIn(m, [0], "AAA");
      expect(mm[0], "AAA");
      expect(m.length, 0);
    });

    test('should set value to Map inside a List', () {
      final m = new List();
      m.insert(0, new Map());
      final mm = assocIn(m, [0, "A"], "AAA");
      expect(mm[0]["A"], "AAA");
    });
  });
}

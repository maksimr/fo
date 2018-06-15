import 'package:fo/fo.dart' show assoc;
import 'package:test/test.dart';

void main() {
  group('assoc', () {
    test('should set value to Map and return new Map', () {
      final m = new Map();
      final mm = assoc(m, "A", "AAA");

      expect(mm["A"], "AAA");
      expect(m["A"], null);
    });

    test('should set value to List and return new List', () {
      final m = new List();
      final mm = assoc(m, 0, "AAA");
      expect(mm[0], "AAA");
      expect(m.length, 0);
    });
  });
}

@Timeout(Duration(seconds: 12))

import 'package:road/road.dart';
import 'package:test/test.dart';

void main() {
  group('Basic test cases |', () {
    test('street length = 3 => 1 is opposite 6', () {
      expect(overTheRoad(1, 3), equals(6));
    });

    test('street length = 3 => 2 is opposite 5', () {
      expect(overTheRoad(2, 3), equals(5));
    });

    test('street length = 3 => 3 is opposite 4', () {
      expect(overTheRoad(3, 3), equals(4));
    });

    test('street length = 5 => 3 is opposite 8', () {
      expect(overTheRoad(3, 5), equals(8));
    });

    test('street length = 11 => 7 is opposite 11', () {
      expect(overTheRoad(7, 11), equals(16));
    });
  });

  test('memory test', () {
    expect(overTheRoad(1, 500000000), equals(1000000000));
  });

  test('wrong value', () {
    expect(overTheRoad(7, 11), equals(2));
  });
}

import 'package:flutter_test/flutter_test.dart';

void main() {
  print('main');
  setUp(() {
    print('setUp');
  });
  test('test_1', () {
    print('test_1');
  });

  test('test_2', () {
    print('test_2');
  });

  group('group', () {
    print('group');
    setUp(() {
      print('setUp_in_group');
    });

    test('test_1_in_group', () {
      print('test_1_in_group');
    });

    test('test_2_in_group', () {
      print('test_2_in_group');
    });
  });
}

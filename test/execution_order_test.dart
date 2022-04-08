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

  group('grouped_test', () {
    print('group');
    setUp(() {
      print('setUp_in_group');
    });

    test('test_in_group_1', () {
      print('test_in_group_1');
    });

    test('test_in_group_2', () {
      print('test_in_group_2');
    });
  });
}

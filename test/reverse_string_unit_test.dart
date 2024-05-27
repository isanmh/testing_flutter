import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/main.dart';

void main() {
  test('Kata akan dibalik', () {
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, 'olleH');
  });
}

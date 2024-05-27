import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Reverse string test', () {
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      await driver?.close();
    });

    final textField = find.byType('TextField');
    final button = find.text('Reverse');
    final reverse = find.text('olleH');

    test('Reverse string test', () async {
      await driver?.tap(textField);
      await driver?.enterText('Hello');
      await driver?.waitForAbsent(reverse);
      await driver?.tap(button);
      await driver?.waitFor(reverse);
      await driver?.waitUntilNoTransientCallbacks();
      // assert adalah fungsi yang digunakan untuk membandingkan nilai
      assert(reverse != null);
    });
  });
}

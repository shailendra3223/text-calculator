import 'package:test/test.dart';
import '../lib/text_calculator.dart';

void main() {
  test('empty input returns 0', () {
    final calc = TextCalculator();
    expect(calc.add(""), 0);
  });
}

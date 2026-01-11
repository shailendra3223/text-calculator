import 'package:test/test.dart';
import '../lib/text_calculator.dart';

void main() {
  test('empty input returns 0', () {
    final calc = TextCalculator();
    expect(calc.add(""), 0);
  });

  test('single number returns itself', () {
    final calc = TextCalculator();
    expect(calc.add("7"), 7);
  });

  test('two numbers separated by comma', () {
  final calc = TextCalculator();
  expect(calc.add("1,5"), 6);
});

test('newline works as delimiter', () {
  final calc = TextCalculator();
  expect(calc.add("1\n2,3"), 6);
});

test('supports custom delimiter syntax', () {
  final calc = TextCalculator();
  expect(calc.add("//;\n1;2"), 3);
});

test('throws error when a negative number is passed', () {
  final calc = TextCalculator();
  expect(() => calc.add("1,-2"), throwsException);
});


}

class TextCalculator {
  int add(String input) {
    if (input.isEmpty) return 0;

    if (input.startsWith("//")) {
      final delimiter = input[2];
      input = input.substring(4);
      input = input.replaceAll(delimiter, ",");
    }

    input = input.replaceAll("\n", ",");

    final parts = input.split(",");
    final numbers = parts.map((p) => int.parse(p)).toList();

    return numbers.reduce((a, b) => a + b);
  }
}

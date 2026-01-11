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

    final negatives = numbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception("negative numbers not allowed");
    }

    return numbers.reduce((a, b) => a + b);
  }
}

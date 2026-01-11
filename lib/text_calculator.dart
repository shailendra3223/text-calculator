class TextCalculator {
  int add(String input) {
    if (input.isEmpty) return 0;

    if (!input.contains(",")) {
      return int.parse(input);
    }

    final parts = input.split(",");
    return int.parse(parts[0]) + int.parse(parts[1]);
  }
}


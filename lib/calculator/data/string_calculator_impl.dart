class StringCalculatorImpl{
  int add(String numbers){
    // first test case for checking string is empty or not then return 0
    if (numbers.isEmpty) return 0;

    // We will update the tests here
    String delimiter = ',';
    String actualNumbers = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      actualNumbers = parts[1];
    }

    final normalized = actualNumbers.replaceAll('\n', delimiter);
    final parts = normalized.split(delimiter);

    final nums = parts.map(int.parse).toList();
    final negatives = nums.where((n) => n < 0).toList();

    if (negatives.isNotEmpty) {
      throw Exception('Negative numbers not allowed ${negatives.join(', ')}');
    }

    return nums.reduce((a, b) => a + b);
  }

}
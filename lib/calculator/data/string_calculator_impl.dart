class StringCalculatorImpl{
  int add(String numbers){
    // first test case for checking string is empty or not then return 0
    if (numbers.isEmpty) return 0;

    // We will update the tests here
    String delimiter = ',';
    String actualNumbers = numbers;

    if (numbers.startsWith('//')) {
      final split = numbers.split('\n');
      delimiter = split.first.substring(2);
      actualNumbers = split[1];
    }

    final normalized = actualNumbers.replaceAll('\n', delimiter);
    final parts = normalized.split(delimiter);
    return parts.map(int.parse).reduce((a, b) => a + b);
  }

}
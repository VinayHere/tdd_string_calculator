class StringCalculatorImpl{
  int add(String numbers){
    // first test case for checking string is empty or not then return 0
    if (numbers.isEmpty) return 0;

    // We will update the tests here
    final normalized = numbers.replaceAll('\n', ',');
    final parts = normalized.split(',');
    return parts.map(int.parse).reduce((a, b) => a + b);
  }

}
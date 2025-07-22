import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_string_calculator/calculator/data/string_calculator_impl.dart';

void main(){
  late  StringCalculatorImpl stringCalculator;
  
  setUp((){
    stringCalculator = StringCalculatorImpl();
  });
  
  test('Should return 0 if there is an empty string', (){
    expect(stringCalculator.add(''), 0);
  });
  
  test('Should return number itself for single digit number', (){
    expect(stringCalculator.add('1'), 1);
  });

  test('Should return sum of the numbers if number appears with comma separated', (){
    expect(stringCalculator.add('1, 6'), 7);
  });
  
  test('Should return sum of the multiple numbers with comma separated', (){
    expect(stringCalculator.add('1,8,7,6,4'), 26);
  });

  test('Should return sum which will support newlines as separators', () {
    expect(stringCalculator.add("1\n2,3"), 6);
  });
  
}
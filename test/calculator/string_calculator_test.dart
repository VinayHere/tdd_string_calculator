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
  
}
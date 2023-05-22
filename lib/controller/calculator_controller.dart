import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController{
  var inputValue = ''.obs;
  var outputValue = 0.0.obs;
  var expression = '';
  Parser parser = Parser();

  void onPress(String btnName){

    if(btnName == '='){
      onResultPress();
      print(outputValue.value);
    }
    else if(btnName == 'C'){
      inputValue.value = '';
      outputValue.value = 0.0;
    }
    else{
      if(inputValue.value.endsWith('.')){
        if(btnName == '.'){
          print('Invalid Expression');
        }
        else{
          inputValue.value = inputValue+btnName;
          print(inputValue);
        }
      }
      else{
        inputValue.value = inputValue+btnName;
        print(inputValue);
      }
    }
  }

  void onResultPress(){

    try {
      expression = inputValue.value.replaceAll('x', '*');
      Expression exp = parser.parse(expression);
      ContextModel contextModel = ContextModel();
      outputValue.value = exp.evaluate(EvaluationType.REAL, contextModel);
    } on Exception catch (e) {
      // TODO
      print(e);
    }

  }
}
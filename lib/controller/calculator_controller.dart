import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController{
  var inputValue = ''.obs;
  var outputValue = ''.obs;

  void onPress(String btnName){
    print(btnName);
  }
}
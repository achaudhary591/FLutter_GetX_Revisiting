import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_revisiting/config/colors.dart';
import 'package:getx_revisiting/controller/calculator_controller.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.btnName, this.isFunction = false}) : super(key: key);

  final String btnName;
  final bool isFunction;

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    return InkWell(
      onTap: (){
        calculatorController.onPress(btnName);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            btnName,
            style: TextStyle(
              color: isFunction ? buttonColor : textColor,
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_revisiting/components/my_button.dart';
import 'package:getx_revisiting/config/colors.dart';
import 'package:getx_revisiting/controller/calculator_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Obx(() {
                              if(calculatorController.outputValue.value == 0.0){
                                return const SizedBox();
                              }
                              else{
                                return Text(
                                  '${calculatorController.outputValue.value}',
                                  style: const TextStyle(
                                    color: buttonColor,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w900,
                                  ),
                                );
                              }
                            }),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Obx(() {
                              return Text(
                                calculatorController.inputValue.value,
                                style: const TextStyle(
                                  color: textColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const MyButton(
                          btnName: 'C',
                          isFunction: true,
                        ),
                        const MyButton(
                          btnName: '%',
                          isFunction: true,
                        ),
                        const MyButton(
                          btnName: '/',
                          isFunction: true,
                        ),
                        IconButton(
                          onPressed: () {}, icon: const Icon(Icons.backspace),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          btnName: '7',
                        ),
                        MyButton(
                          btnName: '8',
                        ),
                        MyButton(
                          btnName: '9',
                        ),
                        MyButton(
                          btnName: '*',
                          isFunction: true,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          btnName: '4',
                        ),
                        MyButton(
                          btnName: '5',
                        ),
                        MyButton(
                          btnName: '6',
                        ),
                        MyButton(
                          btnName: '-',
                          isFunction: true,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          btnName: '1',
                        ),
                        MyButton(
                          btnName: '2',
                        ),
                        MyButton(
                          btnName: '3',
                        ),
                        MyButton(
                          btnName: '+',
                          isFunction: true,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          btnName: '0',
                        ),
                        MyButton(
                          btnName: '.',
                        ),
                        MyButton(
                          btnName: '00',
                        ),
                        MyButton(
                          btnName: '=',
                          isFunction: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

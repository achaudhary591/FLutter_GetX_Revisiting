import 'package:flutter/material.dart';
import 'package:getx_revisiting/components/my_button.dart';
import 'package:getx_revisiting/config/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              '1233',
                              style: TextStyle(
                                color: buttonColor,
                                fontSize: 45,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '123456-45678+7463',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                color: whiteColor,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.backspace,
                          color: labelColor,
                        ),
                        SizedBox(
                          width: 36,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          btnName: 'C',
                          isFunction: true,
                        ),
                        MyButton(
                          btnName: '%',
                          isFunction: true,
                        ),
                        MyButton(
                          btnName: '&',
                          isFunction: true,
                        ),
                        MyButton(
                          btnName: '/',
                          isFunction: true,
                        ),
                      ],
                    ),
                    Row(
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
                    Row(
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
                    Row(
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
                    Row(
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

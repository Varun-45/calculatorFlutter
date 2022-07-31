import 'package:calculator_bana_rahe_hai/buttons.dart';
import 'package:calculator_bana_rahe_hai/header.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = "test";
  var result = "test";
  final cColor = const Color(0xffda322a);
  final numColor = const Color(0xffecb7ce);
  final opColor = const Color(0xff95a9e4);
  final butColor = const Color(0xff171717);

  final List<String> buttons = [
    'C',
    '⌫',
    '%',
    '÷',
    '7',
    '8',
    '9',
    '×',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '+/-',
    '0',
    '.',
    '='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: Vx.m16,
              alignment: Alignment.topLeft,
              child: const Header(),
            ),
            Container(
              padding: Vx.m8,
              alignment: Alignment.centerRight,
              child: userInput.text.size(18).color(Vx.white).make(),
            ),
            Container(
              padding: Vx.m8,
              alignment: Alignment.centerRight,
              child: result.text.size(30).color(Vx.white).make(),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return MyButtons(
                        buttonColor: butColor,
                        buttonText: buttons[index],
                        buttonTextColor: cColor,
                        buttonTapped: () {
                          setState(() {
                            userInput = '';
                            result = '0';
                          });
                        });
                  } else if (index == 1) {
                    return MyButtons(
                      buttonColor: butColor,
                      buttonText: buttons[index],
                      buttonTextColor: opColor,
                      buttonTapped: () {
                        if (userInput.isNotEmpty) {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        }
                      },
                    );
                  } else if (index == 2 ||
                      index == 3 ||
                      index == 7 ||
                      index == 11 ||
                      index == 15) {
                    return MyButtons(
                      buttonColor: butColor,
                      buttonText: buttons[index],
                      buttonTextColor: opColor,
                      buttonTapped: () {
                        setState(() {
                          userInput += buttons[index];
                        });
                      },
                    );
                  } else if (index == 4 ||
                      index == 5 ||
                      index == 6 ||
                      index == 8 ||
                      index == 9 ||
                      index == 10 ||
                      index == 12 ||
                      index == 13 ||
                      index == 14 ||
                      index == 17 ||
                      index == 18) {
                    return MyButtons(
                      buttonColor: butColor,
                      buttonText: buttons[index],
                      buttonTextColor: numColor,
                      buttonTapped: () {
                        setState(() {
                          userInput += buttons[index];
                        });
                      },
                    );
                  } else if (index == 16) {
                    return MyButtons(
                        buttonColor: butColor,
                        buttonText: buttons[index],
                        buttonTextColor: numColor,
                        buttonTapped: () {
                          setState(() {
                            if (userInput[0] == '-') {
                              userInput =
                                  userInput.substring(1, userInput.length);
                            } else {
                              userInput = '-$userInput';
                            }
                          });
                        });
                  } else {
                    return MyButtons(
                        buttonColor: opColor,
                        buttonText: buttons[index],
                        buttonTextColor: butColor,
                        buttonTapped: () {
                          setState(() {
                            result = evaluate(userInput);
                          });
                        });
                  }
                },
              ),
            ).expand(),
          ],
        ),
      ),
    );
  }
}

String evaluate(String userInput) {
  String result = userInput;
  result = userInput.replaceAll('÷', '/');
  result = result.replaceAll('×', '*');

  Parser p = Parser();
  Expression exp = p.parse(result);
  ContextModel cm = ContextModel();
  num eval = exp.evaluate(EvaluationType.REAL, cm);
  result = eval.toString();
  return result;
}

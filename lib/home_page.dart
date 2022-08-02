import 'package:calculator_bana_rahe_hai/buttons.dart';
import 'package:calculator_bana_rahe_hai/header.dart';
import 'package:calculator_bana_rahe_hai/utils/own_theme_fields.dart';
import 'package:calculator_bana_rahe_hai/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = "";
  var result = "";
  final cColor = const Color(0xffda322a);
  final numColor = const Color(0xffecb7ce);
  final opColor = const Color(0xff95a9e4);
  var inpColor = const Color(0xffecb7ce);
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
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: Vx.m16,
              alignment: Alignment.topLeft,
              child: const Header(),
            ).expand(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 20,
              padding: const EdgeInsets.only(right: 32, left: 32),
              alignment: Alignment.centerRight,
              child: userInput.text.size(20).color(inpColor).make(),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: const EdgeInsets.only(right: 32, left: 32),
              alignment: Alignment.centerRight,
              child: result.text.size(40).color(numColor).make().px4(),
            ),
            const Divider(
              color: Colors.white,
              thickness: 0,
              indent: 30,
              endIndent: 30,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtons(
                    buttonColor: ownTheme(context).butColor,
                    buttonText: buttons[0],
                    buttonTextColor: cColor,
                    buttonTapped: () {
                      setState(() {
                        userInput = '';
                        result = '0';
                        inpColor = cColor;
                      });
                    }),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[1],
                  buttonTextColor: ownTheme(context).opColor,
                  buttonTapped: () {
                    if (userInput.isNotEmpty) {
                      setState(() {
                        userInput =
                            userInput.substring(0, userInput.length - 1);
                        inpColor = opColor;
                      });
                    }
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[2],
                  buttonTextColor: ownTheme(context).opColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[2];
                      inpColor = opColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[3],
                  buttonTextColor: ownTheme(context).opColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[3];
                      inpColor = opColor;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[4],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[4];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[5],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[5];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[6],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[6];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[7],
                  buttonTextColor: ownTheme(context).opColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[7];
                      inpColor = opColor;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[8],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[8];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[9],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[9];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[10],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[10];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[11],
                  buttonTextColor: ownTheme(context).opColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[11];
                      inpColor = opColor;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[12],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[12];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[13],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[13];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[14],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[14];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[15],
                  buttonTextColor: ownTheme(context).opColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[15];
                      inpColor = opColor;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButtons(
                    buttonColor: ownTheme(context).butColor,
                    buttonText: buttons[16],
                    buttonTextColor: ownTheme(context).numColor,
                    buttonTapped: () {
                      setState(() {
                        if (userInput[0] == '-') {
                          userInput = userInput.substring(1, userInput.length);
                        } else {
                          userInput = '-$userInput';
                        }
                        inpColor = numColor;
                      });
                    }),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[17],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[17];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                  buttonColor: ownTheme(context).butColor,
                  buttonText: buttons[18],
                  buttonTextColor: ownTheme(context).numColor,
                  buttonTapped: () {
                    setState(() {
                      userInput += buttons[18];
                      inpColor = numColor;
                    });
                  },
                ),
                const SizedBox(width: 12),
                MyButtons(
                    buttonColor: ownTheme(context).opColor,
                    buttonText: buttons[19],
                    buttonTextColor: ownTheme(context).butColor,
                    buttonTapped: () {
                      setState(() {
                        result = evaluate(userInput);
                        // inpColor = ;
                        userInput = result;
                      });
                    }),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

String evaluate(String userInput) {
  try {
    String result = userInput;
    result = userInput.replaceAll('÷', '/');
    result = result.replaceAll('×', '*');
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    num eval = exp.evaluate(EvaluationType.REAL, cm);
    result = eval.toString();
    if (eval == int.parse(result.split(".").first)) {
      result = result.split(".").first;
    }
    return result;
  } catch (e) {
    return "Math Error";
  }
}

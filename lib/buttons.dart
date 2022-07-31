import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final buttonColor;
  final buttonText;
  final buttonTextColor;
  final buttonTapped;

  const MyButtons({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: buttonTapped,
        child: Container(
          width: 80,
          height: 80,
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 32,
              color: buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}

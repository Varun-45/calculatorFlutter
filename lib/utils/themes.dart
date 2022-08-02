import 'package:calculator_bana_rahe_hai/utils/own_theme_fields.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    backgroundColor: const Color(0xfff4f0f1),
  )..addOwn(OwnThemeFields(const Color(0xffa92c5e), const Color(0xff3056c1),
      const Color(0xfff2e6ea)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    backgroundColor: const Color(0xff010101),
  )..addOwn(OwnThemeFields(const Color(0xffa92c5e), const Color(0xff3056c1),
      const Color(0xfff2e6ea)));
}

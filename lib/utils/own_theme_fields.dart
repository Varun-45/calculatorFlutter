import 'package:flutter/material.dart';

class OwnThemeFields {
  final Color? numColor;
  final Color? opColor;
  final Color? butColor;

  OwnThemeFields(this.numColor, this.opColor, this.butColor);

  factory OwnThemeFields.empty() {
    return OwnThemeFields(const Color(0xffecb7ce), const Color(0xff95a9e4),
        const Color(0xff171717));
  }
}

extension ThemeDataExtensions on ThemeData {
  static final Map<InputDecorationTheme, OwnThemeFields> _own = {};

  void addOwn(OwnThemeFields own) {
    _own[inputDecorationTheme] = own;
  }

  static OwnThemeFields? empty;

  OwnThemeFields own() {
    var o = _own[inputDecorationTheme];
    if (o == null) {
      empty ??= OwnThemeFields.empty();
      o = empty;
    }
    return o!;
  }
}

OwnThemeFields ownTheme(BuildContext context) => Theme.of(context).own();

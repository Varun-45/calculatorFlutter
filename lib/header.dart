import 'package:calculator_bana_rahe_hai/utils/own_theme_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Calculator".text.xl3.color(ownTheme(context).numColor).make().px4(),
      "by Vaibhav".text.lg.color(ownTheme(context).opColor).make().px4(),
    ]);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Calculator".text.xl3.color(const Color(0xffecb7ce)).make().px4(),
      "by Vaibhav".text.lg.color(const Color(0xff95a9e4)).make().px4(),
    ]);
  }
}

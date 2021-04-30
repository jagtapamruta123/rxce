import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class WalletItemText extends StatelessWidget {
  Function onTap;
  String name;
  Color color;
  TextDecoration decoration;
  WalletItemText({
    this.name,
    this.decoration,
    this.color = Colors.black,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomTextWidget(
        title: name,
        fontSize: 15,
        color: color,
        letterSpecing: 1.5,
        fontFamily: 'Archia',
        fontWeight: FontWeight.bold,
        decoration: decoration,
      ),
    );
  }
}

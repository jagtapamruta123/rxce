import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  String title;
  FontWeight fontWeight;
  double fontSize;
  Color color;
  double letterSpecing;
  TextDecoration decoration;
  int lines;
  TextOverflow overFlow;
  String fontFamily;

  CustomTextWidget({
    this.color,
    this.title,
    this.fontSize,
    this.overFlow = TextOverflow.ellipsis,
    this.lines = 5,
    this.decoration,
    this.letterSpecing,
    this.fontWeight,
    this.fontFamily,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: lines,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        letterSpacing: letterSpecing,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
        fontFamily: fontFamily,
        height: 1
      ),
    );
  }
}

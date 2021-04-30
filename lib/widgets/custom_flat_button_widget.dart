import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class CustomFlatButton extends StatelessWidget {
  String title;
  CustomFlatButton({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        color: Theme.of(context).accentColor,
        height: 35,
        child: CustomTextWidget(
          title: 'Continue',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
        width: double.infinity,
      ),
    );
  }
}

//FlatBottonPromotion page
class CustomFlatButtonWidget extends StatelessWidget {
  Color color;
  Function onTap;
  String title;
  Color textColor;
  CustomFlatButtonWidget({
    this.color = Colors.green,
    this.onTap,
    this.title,
    this.textColor = Colors.white,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color,
      onPressed: onTap,
      child: CustomTextWidget(
        title: title,
        fontSize: 15,
        color: textColor,
        letterSpecing: 1,
        fontFamily: 'Archia',
        // fontWeight: FontWeight.bold,
      ),
    );
  }
}

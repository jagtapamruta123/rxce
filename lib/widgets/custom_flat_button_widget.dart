import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
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

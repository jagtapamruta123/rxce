import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            title: 'ID :',
            fontSize: 15,
            color: Colors.black,
            letterSpecing: 1,
            fontFamily: 'Archia',
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            title: 'Mobile :',
            fontSize: 15,
            color: Colors.black,
            letterSpecing: 1,
            fontFamily: 'Archia',
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            title: 'Nick Name :',
            fontSize: 15,
            color: Colors.black,
            letterSpecing: 1,
            fontFamily: 'Archia',
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            title: 'Available Balance :',
            fontSize: 15,
            color: Colors.black,
            letterSpecing: 1,
            fontFamily: 'Archia',
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

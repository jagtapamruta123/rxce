import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class TabBarViewBody extends StatelessWidget {
  const TabBarViewBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        title: 'Total People',
                        fontSize: 20,
                        color: Colors.black,
                        letterSpecing: 1,
                        fontFamily: 'Archia',
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextWidget(
                        title: '0',
                        fontSize: 20,
                        color: Colors.black,
                        letterSpecing: 1,
                        fontFamily: 'Archia',
                        // fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        title: 'Contribution',
                        fontSize: 20,
                        color: Colors.black,
                        letterSpecing: 1,
                        fontFamily: 'Archia',
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextWidget(
                        title: '₹ 0',
                        fontSize: 20,
                        color: Colors.black,
                        letterSpecing: 1,
                        fontFamily: 'Archia',
                        // fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
           
           
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              label: 'My Promotion Code',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              label: 'My Promotion Link',
            ),
            SizedBox(
              height: 40,
            ),
            // Spacer(),
            CustomFlatButtonWidget(
              onTap: () {},
              title: 'Open Link',
            ),
          ],
        ),
      ],
    );
  }
}
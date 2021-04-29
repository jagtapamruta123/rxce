import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/bank_componants/add_bank_details.dart';

import 'package:rxce/widgets/custom_text_widget.dart';

class BankCardPage extends StatefulWidget {
  static String id = 'bank_card';
  @override
  _BankCardPageState createState() => _BankCardPageState();
}

class _BankCardPageState extends State<BankCardPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Bank Card',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () => Navigator.pushNamed(
              context,
              AddBankDetails.id,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/peroid_record_item_widget.dart';

class ParityRecordPage extends StatefulWidget {
  static String id = 'parity_record';
  @override
  _ParityRecordPageState createState() => _ParityRecordPageState();
}

class _ParityRecordPageState extends State<ParityRecordPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Parity Record',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          //  physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return RecordItemWidget(
              period: '14878',
              price: '54632',
              number: '9',
              results: 'results',
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rxce/functions/check_internet.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';

import 'package:rxce/widgets/custom_text_widget.dart';

class MyParityRecordPage extends StatefulWidget {
  static String id = 'my_parity_record';
  @override
  _MyParityRecordPageState createState() => _MyParityRecordPageState();
}

class _MyParityRecordPageState extends State<MyParityRecordPage> {
  ConnectivityStream stream = ConnectivityStream();
  @override
  void initState() {
    stream.getState((val) {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: NoInternetCard(!ConnectivityStream.isInternet),
      appBar: AppBar(
        // leadingWidth: 25,
        title: CustomTextWidget(
          title: 'My Parity Record',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

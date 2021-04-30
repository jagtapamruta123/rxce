import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';

import 'package:rxce/widgets/custom_text_widget.dart';

class PrivacyPolicyPage extends StatefulWidget {
  static String id = 'privacy_policy';
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Privacy Policy',
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

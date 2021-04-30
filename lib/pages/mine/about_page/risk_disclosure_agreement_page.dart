import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';

import 'package:rxce/widgets/custom_text_widget.dart';

class RiskDisclosureAgreementPage extends StatefulWidget {
  static String id = 'risk_desclosure';
  @override
  _RiskDisclosureAgreementPageState createState() =>
      _RiskDisclosureAgreementPageState();
}

class _RiskDisclosureAgreementPageState
    extends State<RiskDisclosureAgreementPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Risk Disclosure Agreement',
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

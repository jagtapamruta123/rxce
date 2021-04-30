import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';

import 'package:rxce/widgets/custom_text_widget.dart';

class AddressPage extends StatefulWidget {
  static String id = 'address';
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Address',
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
              AddAddressDetails.id,
            ),
          )
        ],
      ),
    );
  }
}

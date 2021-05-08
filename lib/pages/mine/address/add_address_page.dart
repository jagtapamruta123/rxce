import 'package:flutter/material.dart';
import 'package:rxce/functions/check_internet.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class AddAddressDetails extends StatefulWidget {
  static String id = 'add_address';
  @override
  _AddAddressDetailsState createState() => _AddAddressDetailsState();
}

class _AddAddressDetailsState extends State<AddAddressDetails> {
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
        title: CustomTextWidget(
          title: 'Add Bank Card',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                label: 'Full Name',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'Mobile Number',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'Pincode',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'State',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'City/Town',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                maxLine: 4,
                label: 'Detail Address',
              ),
              SizedBox(
                height: 40,
              ),
              CustomFlatButtonWidget(
                onTap: () {},
                title: '   Continue   ',
              ),
              // CustomFlatButton(),
            ],
          ),
        ),
      ),
    );
  }
}

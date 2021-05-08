import 'package:flutter/material.dart';
import 'package:rxce/functions/check_internet.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class AddBankDetails extends StatefulWidget {
  static String id = 'add_bank';
  @override
  _AddBankDetailsState createState() => _AddBankDetailsState();
}

class _AddBankDetailsState extends State<AddBankDetails> {
  ConnectivityStream stream = ConnectivityStream();

  @override
  void initState() {
    // TODO: implement initState
    stream.getState((val) {
      setState(() {});
    });
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
                label: 'Actual Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'IFSC Code',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'Bank Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'Account Number',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'State/Territoty',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'City',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'Address',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'Mobile Number',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'Email',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                label: 'UPI Account',
              ),
              SizedBox(
                height: 20,
              ),
              CustomFlatButtonWidget(
                title: 'Continue',
              )
              // CustomFlatButton(),
            ],
          ),
        ),
      ),
    );
  }
}

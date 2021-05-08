import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxce/functions/check_internet.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/text_form_field.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      bottomNavigationBar: NoInternetCard(
        !ConnectivityStream.isInternet,
      ),
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'LOGIN',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextFormFieldWidget(
              // enable: true,
              validator: (String val) {
                if (val.isEmpty) {
                  return '';
                }
                return null;
              },
              //  inputBorder: ,
              //   controller: _nameController,
              prefix: Icon(
                Icons.phone_android_outlined,
              ),
              filled: false,
              isDense: true,
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              align: TextAlign.center,
              inputTextFormatter: [
                //  LengthLimitingTextInputFormatter(20),
              ],
              inputType: TextInputType.number,
              // action: TextInputAction.newline,
              hintFontSize: 15,

              onChanged: (value) {
                //  name = value;
              },

              hintText: 'Please Enter Mobile Number',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormFieldWidget(
              // enable: true,
              validator: (String val) {
                if (val.isEmpty) {
                  return '';
                }
                return null;
              },
              //  inputBorder: ,
              //   controller: _nameController,
              prefix: Icon(
                Icons.lock,
              ),
              filled: false,
              isDense: true,
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              align: TextAlign.center,
              inputTextFormatter: [
                //  LengthLimitingTextInputFormatter(20),
              ],
              inputType: TextInputType.visiblePassword,
              // action: TextInputAction.newline,
              hintFontSize: 15,

              onChanged: (value) {
                //  name = value;
              },

              hintText: 'Password',
            ),
            SizedBox(
              height: 30,
            ),
            CustomFlatButtonWidget(
              onTap: () {},
              title: 'Login',
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatButtonWidget(
                  onTap: () {},
                  title: 'Register',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomFlatButtonWidget(
                  onTap: () {},
                  title: 'Forgot Password',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

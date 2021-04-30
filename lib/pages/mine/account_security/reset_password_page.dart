import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/text_form_field.dart';

class ReserpasswordPage extends StatefulWidget {
  static String id = 'reset_pass';
  @override
  _ReserpasswordPageState createState() => _ReserpasswordPageState();
}

class _ReserpasswordPageState extends State<ReserpasswordPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Reset Password',
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
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: CustomTextFormFieldWidget(
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
                      Icons.message_rounded,
                    ),
                    filled: false,
                    isDense: true,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    align: TextAlign.center,
                    inputTextFormatter: [
                      LengthLimitingTextInputFormatter(20),
                    ],
                    inputType: TextInputType.number,
                    // action: TextInputAction.newline,
                    hintFontSize: 15,

                    onChanged: (value) {
                      //  name = value;
                    },

                    hintText: 'Verification Code',
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: CustomFlatButtonWidget(
                      onTap: () {},
                      color: Colors.white,
                      title: 'OTP',
                      textColor: Colors.black,
                    ),
                  ),
                ),
              ],
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
              inputType: TextInputType.number,
              // action: TextInputAction.newline,
              hintFontSize: 15,

              onChanged: (value) {
                //  name = value;
              },

              hintText: 'New Password',
            ),
            SizedBox(
              height: 30,
            ),
            CustomFlatButtonWidget(
              onTap: () {},
              title: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}

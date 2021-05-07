import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxce/model/registration_model.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';
import 'package:rxce/services/register.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/text_form_field.dart';

class RegistrationPage extends StatefulWidget {
  static String id = 'registration';
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController verificationController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController recommandationController = TextEditingController();
  String mobile;
  String verification;
  String password;
  String referral;
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scafolfKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // mobileNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scafolfKey,
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Registration',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  controller: mobileNumberController,
                  // enable: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    }
                    return null;
                  },

                  prefix: Icon(
                    Icons.phone_android_outlined,
                  ),
                  filled: false,
                  isDense: true,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  align: TextAlign.center,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  inputType: TextInputType.number,
                  // action: TextInputAction.newline,
                  hintFontSize: 15,

                  onChanged: (value) {
                    mobile = value;
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Verification code';
                          }
                          return null;
                        },
                        //  inputBorder: ,
                        controller: verificationController,
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
                        inputType: TextInputType.text,
                        // action: TextInputAction.newline,
                        hintFontSize: 15,

                        onChanged: (value) {
                          verification = value;
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
                    if (val.isEmpty || val == null) {
                      return 'Enter password';
                    }
                    return null;
                  },
                  //  inputBorder: ,
                  controller: passwordController,
                  prefix: Icon(
                    Icons.lock,
                  ),
                  filled: false,
                  isDense: true,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  align: TextAlign.center,
                  inputTextFormatter: [
                    LengthLimitingTextInputFormatter(20),
                  ],
                  inputType: TextInputType.visiblePassword,
                  // action: TextInputAction.newline,
                  hintFontSize: 15,

                  onChanged: (value) {
                    password = value;
                  },

                  hintText: 'Password',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormFieldWidget(
                  validator: (String val) {
                    if (val.isEmpty || val == null) {
                      return 'Enter referral code';
                    }
                    return null;
                  },

                  controller: recommandationController,
                  prefix: Icon(
                    Icons.card_giftcard_outlined,
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
                    referral = value;
                  },

                  hintText: 'Recommandation Code',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFlatButtonWidget(
                  onTap: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();

                      var user = RegistrationModel(
                        mobile: mobile,
                        password: password,
                        referral_code: referral,
                      );
                      registerUser(registration: user);
                    }
                  },
                  title: 'Register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

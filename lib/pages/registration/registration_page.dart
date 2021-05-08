import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:rxce/functions/ServerResponse.dart';
import 'package:rxce/functions/check_internet.dart';
import 'package:rxce/functions/set_timer.dart';
import 'package:rxce/functions/show_toast_msg.dart';
import 'package:rxce/model/registration_model.dart';
import 'package:rxce/pages/home_page.dart';
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

class _RegistrationPageState extends State<RegistrationPage>
    with TickerProviderStateMixin {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController verificationController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController recommandationController = TextEditingController();
  String mobile;
  String verification;
  String password;
  String referral;
  AnimationController _controller;
  bool _showTimer = false;
  final int time = 60;
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scafolfKey = GlobalKey<ScaffoldState>();
  ConnectivityStream stream = ConnectivityStream();

  @override
  void initState() {
    stream.getState((val) {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: time))
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              setState(() {
                //_showTimer = !_showTimer;
              });
            }
          });
    _controller.reverse(
      from: _controller.value == 0.0 ? 1.0 : _controller.value,
    );
  }

  Future<Null> _startCountdown() async {
    setState(() {
      //  _hideResendButton = true;
      // totalTimeInSeconds = time;
    });
    _controller.reverse(
        from: _controller.value == 0.0 ? 1.0 : _controller.value);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scafolfKey,
      bottomNavigationBar: NoInternetCard(
        !ConnectivityStream.isInternet,
      ),
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
                SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldWidget(
                  controller: mobileNumberController,
                  // enable: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      showStyledToast(
                        'Please enter your mobile number',
                        context,
                      );
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
                            showStyledToast(
                              'Enter Verification code',
                              context,
                            );
                            // return 'Enter Verification code';
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
                        child: CustomOTPFlatButtonWidget(
                          onTap: () {
                            _startCountdown();
                            _showTimer = true;
                          },
                          color: Colors.white,
                          title: _showTimer
                              ? Text('Verify')
                              : Text(
                                  'OTP',
                                ),
                          textColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: _showTimer,
                  child: SetOtpTimer(_controller, 10.0, Colors.green),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFormFieldWidget(
                  // enable: true,
                  validator: (String val) {
                    if (val.isEmpty || val == null) {
                      showStyledToast(
                        'Enter password',
                        context,
                      );
                      // return 'Enter password';
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
                      showStyledToast(
                        'Enter referral code',
                        context,
                      );
                      // return 'Enter referral code';
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
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();

                      var user = RegistrationModel(
                        mobile: mobile,
                        password: password,
                        referral_code: referral,
                      );
                      //API call
                      ServerResponse response =
                          await registerUser(registration: user);
                      if (response.extraInfo == DataInfo.TrueSuccess &&
                          response.payload != null) {
                        RegistrationModel userResp = response.payload;
                        if (userResp != null) {
                          showToastNormal(userResp.message, Colors.green);

                          Navigator.pushNamed(context, MyHomePage.id);
                        }
                      } else if (response.extraInfo == DataInfo.ServerError) {
                        RegistrationModel userResp = response.payload;
                        if (userResp != null) {
                          showToastNormal(userResp.message, Colors.red);
                        }
                      }
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

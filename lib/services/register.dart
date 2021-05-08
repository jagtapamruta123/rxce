import 'dart:convert';

import 'package:rxce/functions/ServerResponse.dart';
import 'package:rxce/model/registration_model.dart';
import 'package:http/http.dart' as http;

Future<ServerResponse> registerUser({RegistrationModel registration}) async {
  var url = Uri.parse("https://cp.syscryption.com/api/register_user");
  final response = await http.post(
    url,
    headers: {
      // "Content-Type": "application/json",
      // "Accept": "application/json",
    },
    body: {
      "password": registration.password,
      "mobile": registration.mobile,
      "referral_code": registration.referral_code,
    },
  );

  print(response.statusCode);
  print(response.body); //;

  if (response.statusCode == 201) {
    RegistrationModel userResponse = RegistrationModel();

    userResponse.mobile = jsonDecode(response.body)['mobile'];
    userResponse.user_id = jsonDecode(response.body)['user_id'];
    userResponse.message = jsonDecode(response.body)['message'];
    print('registrared successfully');
    return ServerResponse(
      message: 'User Registared successfullyy',
      payload: userResponse,
      extraInfo: DataInfo.TrueSuccess,
    );
  } else {
    RegistrationModel userResponse = RegistrationModel();
    userResponse.message = jsonDecode(response.body)['message'];
    return ServerResponse(
      //  message: 'some error',
      payload: userResponse,
      extraInfo: DataInfo.ExceptionError,
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationModel _$RegistrationModelFromJson(Map<String, dynamic> json) {
  return RegistrationModel(
    mobile: json['mobile'] as String,
    password: json['password'] as String,
    message: json['message'] as String,
    status: json['status'] as String,
    user_id: json['user_id'] as int,
    referral_code: json['referral_code'] as String,
  );
}

Map<String, dynamic> _$RegistrationModelToJson(RegistrationModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'mobile': instance.mobile,
      'referral_code': instance.referral_code,
      'user_id': instance.user_id,
      'status': instance.status,
      'message': instance.message,
    };

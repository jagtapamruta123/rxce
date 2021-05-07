import 'package:json_annotation/json_annotation.dart';
part 'registration_model.g.dart';

@JsonSerializable()
class RegistrationModel {
  @JsonKey(name: 'password')
  String password;

  @JsonKey(name: 'mobile')
  String mobile;

  @JsonKey(name: 'referral_code')
  String referral_code;
  @JsonKey(name: 'user_id')
  int user_id;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'message')
  String message;
  RegistrationModel({
    this.mobile,
    this.password,
    this.message,
    this.status,
    this.user_id,
    this.referral_code,
  });

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationModelToJson(this);
}

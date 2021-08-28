import 'package:json_annotation/json_annotation.dart';
part 'auth.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginData {
  String name;
  String password;

  LoginData({
    required this.name,
    required this.password,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return _$LoginDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Auth {
  int id;
  String name;
  String token;

  Auth({
    required this.id,
    required this.name,
    required this.token,
  });

  factory Auth.fromJson(Map<String, dynamic> json) {
    return _$AuthFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return LoginData(
    name: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return Auth(
    id: json['id'] as int,
    name: json['name'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'token': instance.token,
    };

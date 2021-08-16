import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final int? id;
  final String? name;
  final int? avatar;

  User({this.id, this.name, this.avatar});

  factory User.fromJson(String json) {
    final user = jsonDecode(json);

    return _$UserFromJson(user);
  }
}

import 'dart:convert';

class User {
  final int? id;
  final String? name;

  User({this.id, this.name});

  factory User.fromJson(String json) {
    final user = jsonDecode(json);

    return User(
      id: user['id'],
      name: user['name'],
    );
  }
}

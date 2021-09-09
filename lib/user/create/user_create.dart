import 'package:flutter/material.dart';
import 'package:xb2_flutter/user/create/components/user_create_form.dart';

class UserCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册用户'),
      ),
      body: UserCreateForm(),
    );
  }
}

import 'package:flutter/material.dart';

class UserCreate extends StatefulWidget {
  @override
  _UserCreateState createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  String? name;
  String? password;

  final nameFieldKey = GlobalKey<FormFieldState>();
  final passwordFieldKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '注册用户',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 32,
          ),
        ),
        SizedBox(height: 32),
        TextFormField(
          key: nameFieldKey,
          decoration: InputDecoration(
            labelText: '用户',
          ),
          onChanged: (value) {
            name = value;
          },
        ),
        SizedBox(height: 32),
        TextFormField(
          key: passwordFieldKey,
          obscureText: true,
          decoration: InputDecoration(
            labelText: '密码',
          ),
          onChanged: (value) {
            password = value;
          },
        ),
        SizedBox(height: 32),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
            minimumSize: Size(double.infinity, 60),
          ),
          child: Text('注册用户'),
          onPressed: () {
            print(
                '注册用户：用户 ${nameFieldKey.currentState!.value}, 密码 ${passwordFieldKey.currentState!.value}');
          },
        ),
      ],
    );
  }
}

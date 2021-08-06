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

  final nameFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();

    nameFieldController.dispose();
    passwordFieldController.dispose();
  }

  @override
  void initState() {
    super.initState();

    nameFieldController.addListener(() {
      print('用户 ${nameFieldController.text}');
    });

    passwordFieldController.addListener(() {
      print('密码 ${passwordFieldController.text}');
    });

    // nameFieldController.text = 'wanghao';
    // passwordFieldController.text = '123456';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
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
            controller: nameFieldController,
            decoration: InputDecoration(
              labelText: '用户',
            ),
            onChanged: (value) {
              name = value;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请填写用户名';
              }

              return null;
            },
          ),
          SizedBox(height: 32),
          TextFormField(
            key: passwordFieldKey,
            controller: passwordFieldController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: '密码',
            ),
            onChanged: (value) {
              password = value;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请填写用户密码';
              }

              if (value.isNotEmpty && value.length < 6) {
                return '请设置 6 位以上的密码';
              }

              return null;
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
              // nameFieldKey.currentState!.validate();
              // passwordFieldKey.currentState!.validate();
              formKey.currentState!.validate();
              print(
                  '注册用户：用户 ${nameFieldKey.currentState!.value}, 密码 ${passwordFieldKey.currentState!.value}');
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/components/app_button.dart';
import 'package:xb2_flutter/app/components/app_header_text.dart';
import 'package:xb2_flutter/app/components/app_password_field.dart';
import 'package:xb2_flutter/app/components/app_text_field.dart';
import 'package:xb2_flutter/app/exceptions/http_exception.dart';
import 'package:xb2_flutter/auth/auth.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class AuthLoginForm extends StatefulWidget {
  @override
  _AuthLoginFormState createState() => _AuthLoginFormState();
}

class _AuthLoginFormState extends State<AuthLoginForm> {
  String? name;
  String? password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authModel = Provider.of<AuthModel>(context, listen: true);
    final appModel = context.read<AppModel>();

    // 标题
    final header = AppHeaderText('用户登录');

    // 用户
    final nameField = AppTextField(
      labelText: '用户',
      onChanged: (value) {
        name = value;
      },
    );

    // 密码
    final passwordField = AppPasswordField(
      onChanged: (value) {
        password = value;
      },
    );

    // 提交
    final submitButton = AppButton(
      onPressed: () async {
        formKey.currentState!.validate();

        try {
          await authModel.login(
            LoginData(
              name: name!,
              password: password!,
            ),
          );

          appModel.setPageName('');
        } on HttpException catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.message)),
          );
        }
      },
      text: '确定登录',
    );

    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            nameField,
            passwordField,
            submitButton,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppPasswordField extends StatelessWidget {
  final String? labelText;
  final ValueChanged<String>? onChanged;

  AppPasswordField({
    this.labelText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: labelText ?? '密码',
        ),
        onChanged: onChanged,
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
    );
  }
}

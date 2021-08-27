import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final ValueChanged<String>? onChanged;

  AppTextField({required this.labelText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '请填写$labelText';
          }

          return null;
        },
      ),
    );
  }
}

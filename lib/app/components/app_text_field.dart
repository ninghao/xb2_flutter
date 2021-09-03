import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final bool canValidate;
  final bool isMultiline;
  final bool enabled;

  AppTextField({
    required this.labelText,
    this.onChanged,
    this.controller,
    this.canValidate = true,
    this.isMultiline = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    TextInputType? keyboardType;

    if (isMultiline) {
      keyboardType = TextInputType.multiline;
    }

    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: TextFormField(
        controller: controller,
        enabled: enabled,
        keyboardType: keyboardType,
        maxLines: isMultiline ? null : 1,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        onChanged: onChanged,
        autovalidateMode: canValidate
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
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

import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -20),
            blurRadius: 30,
          ),
        ],
      ),
      child: Center(
        child: Text('AppBottomSheet'),
      ),
    );
  }
}

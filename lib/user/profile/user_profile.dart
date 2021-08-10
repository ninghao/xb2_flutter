import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(
      builder: (context, state, child) {
        return Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: state.isLoggedIn ? Text(state.name) : Text('未登录'),
          ),
        );
      },
    );
  }
}

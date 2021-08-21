import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/post/post.dart';

class UserAvatar extends StatelessWidget {
  final PostUser user;
  final double size;

  UserAvatar({
    required this.user,
    this.size = 32,
  });

  @override
  Widget build(BuildContext context) {
    final userId = user.id;
    final avatarUrl =
        '${AppConfig.apiBaseUrl}/users/$userId/avatar?size=medium';

    return Container(
      width: size,
      height: size,
      child: CircleAvatar(
        backgroundImage: NetworkImage(avatarUrl),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/create/post_create.dart';
import 'package:xb2_flutter/user/profile/user_profile.dart';

class AppPageMain extends StatelessWidget {
  final int currentIndex;

  AppPageMain({this.currentIndex = 0});

  // 一组页面主体小部件
  final pageMain = [
    // 发现
    TabBarView(
      children: [
        Icon(
          Icons.explore_outlined,
          size: 128,
          color: Colors.black12,
        ),
        Icon(
          Icons.local_fire_department_outlined,
          size: 128,
          color: Colors.black12,
        ),
      ],
    ),
    // 添加
    PostCreate(),
    // 用户
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return pageMain.elementAt(currentIndex);
  }
}

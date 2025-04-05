import 'package:flutter/material.dart';
import 'package:xb2_flutter/playground/playground.dart';
import 'package:xb2_flutter/post/create/post_create.dart';
import 'package:xb2_flutter/post/index/post_index.dart';
import 'package:xb2_flutter/user/profile/user_profile.dart';

class AppPageMain extends StatelessWidget {
  final int currentIndex;
  final pageMain = [PostIndex(), PostCreate(), UserProfile(), Playground()];

  AppPageMain({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return pageMain.elementAt(currentIndex);
  }
}

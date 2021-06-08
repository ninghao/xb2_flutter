import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_logo.dart';

class AppPageHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppLogo(),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        ),
      ],
      bottom: TabBar(
        tabs: [
          Tab(text: '最近'),
          Tab(text: '热门'),
        ],
      ),
    );
  }
}

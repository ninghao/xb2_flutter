import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_floating_action_button.dart';
import 'package:xb2_flutter/app/components/app_page_aside.dart';
import 'package:xb2_flutter/app/components/app_page_bottom.dart';
import 'package:xb2_flutter/app/components/app_page_header.dart';
import 'package:xb2_flutter/app/components/app_page_main.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // 底部导航栏当前项目
  int currentAppBottomNavigationBarItem = 0;

  // 是否显示应用栏
  bool showAppBar = true;

  // 点按底部导航栏事件处理
  void onTapAppBottomNavigationBarItem(int index) {
    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppBar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: showAppBar ? AppPageHeader() : null,
          body: AppPageMain(
            currentIndex: currentAppBottomNavigationBarItem,
          ),
          bottomNavigationBar: AppPageBottom(
            currentIndex: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
          ),
          // floatingActionButton: AppFloatingActionButton(),
          drawer: AppPageAside(),
        ),
      ),
    );
  }
}

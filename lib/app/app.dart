import 'package:flutter/material.dart';
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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: '发现',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_outlined),
                label: '添加',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: '用户',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.share_outlined),
            onPressed: () {
              print('floating action button');
            },
            backgroundColor: Colors.black87,
            foregroundColor: Colors.white70,
          ),
        ),
      ),
    );
  }
}

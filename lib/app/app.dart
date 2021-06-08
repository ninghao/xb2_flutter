import 'package:flutter/material.dart';
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
    Center(
      child: Icon(
        Icons.add_a_photo_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
    // 用户
    Center(
      child: Icon(
        Icons.account_circle_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
  ];

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
          appBar: showAppBar
              ? AppBar(
                  title: Image.asset(
                    'assets/images/logo.png',
                    width: 32,
                    color: Colors.white,
                  ),
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
                )
              : null,
          body: pageMain.elementAt(currentAppBottomNavigationBarItem),
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/create/post_create_model.dart';
import 'app_page_aside.dart';
import 'app_page_bottom.dart';
import 'app_page_header.dart';
import 'app_page_main.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // 底部导航栏当前项目
  int currentAppBottomNavigationBarItem = 0;

  // 是否显示应用栏
  bool showAppBar = true;

  // 点按底部导航栏事件处理
  void onTapAppBottomNavigationBarItem(int index) async {
    final postCreateModel = context.read<PostCreateModel>();

    final retainDataAlertDialog = AlertDialog(
      title: Text('是否保留未发布的内容？'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text('否'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text('是'),
        ),
      ],
    );

    if (currentAppBottomNavigationBarItem == 1 && postCreateModel.hasData()) {
      final retainDataResult = await showDialog(
        context: context,
        builder: (context) => retainDataAlertDialog,
      );

      if (retainDataResult == null) {
        return;
      }

      if (!retainDataResult) {
        postCreateModel.reset();
      }
    }

    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppBar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.amber,
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
    );
  }
}

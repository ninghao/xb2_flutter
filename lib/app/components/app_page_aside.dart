import 'package:flutter/material.dart';

class AppPageAside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('王皓'),
            accountEmail: Text('https://nid-vue.ninghao.co'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://resources.ninghao.net/wanghao.jpg',
              ),
            ),
          ),
          ListTile(
            title: Text(
              '作品',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.image_outlined,
              color: Colors.black26,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              '评论',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.comment_outlined,
              color: Colors.black26,
              size: 22,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              '帐户',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.manage_accounts_outlined,
              color: Colors.black26,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              '管理',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.collections_outlined,
              color: Colors.black26,
              size: 22,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              '退出',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.logout_outlined,
              color: Colors.black26,
              size: 22,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

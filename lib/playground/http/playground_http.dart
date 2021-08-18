import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/user/user.dart';

class PlaygroundHttp extends StatefulWidget {
  @override
  _PlaygroundHttpState createState() => _PlaygroundHttpState();
}

class _PlaygroundHttpState extends State<PlaygroundHttp> {
  String? currentUserName;
  String? currentUserToken;

  getUser() async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/users/21');
    final response = await http.get(uri);

    print('状态码 ${response.statusCode}');
    print('响应主体 ${response.body}');

    if (response.statusCode == 200) {
      final user = User.fromJson(response.body);

      print('解码之后 $user');
      print('id: ${user.id}, name: ${user.name}');
    }
  }

  createUser() async {
    final name = '王二小';
    final password = '123456';

    final uri = Uri.parse('https://nid-node.ninghao.co/users');

    final response = await http.post(uri, body: {
      'name': name,
      'password': password,
    });

    print('状态码 ${response.statusCode}');
    print('响应主体 ${response.body}');
  }

  login() async {
    final name = '王小二';
    final password = '123456';

    final uri = Uri.parse('https://nid-node.ninghao.co/login');

    final response = await http.post(uri, body: {
      'name': name,
      'password': password,
    });

    print('状态码 ${response.statusCode}');
    print('响应主体 ${response.body}');

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);

      setState(() {
        currentUserName = responseBody['name'];
        currentUserToken = responseBody['token'];
      });
    }
  }

  updateUser() async {
    final name = '王小二';
    final password = '123456';

    final uri = Uri.parse('https://nid-node.ninghao.co/users');

    final headers = {
      'Authorization': 'Bearer $currentUserToken',
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'validate': {
        'password': password,
      },
      'update': {'name': name},
    });

    final response = await http.patch(
      uri,
      headers: headers,
      body: body,
    );

    print('状态码 ${response.statusCode}');
    print('响应主体 ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentUserName ?? '未登录',
            style: Theme.of(context).textTheme.headline6,
          ),
          ElevatedButton(
            child: Text('发送请求'),
            onPressed: getUser,
          ),
          ElevatedButton(
            child: Text('创建用户'),
            onPressed: createUser,
          ),
          ElevatedButton(
            child: Text('用户登录'),
            onPressed: login,
          ),
          ElevatedButton(
            child: Text('更新用户'),
            onPressed: updateUser,
          ),
        ],
      ),
    );
  }
}

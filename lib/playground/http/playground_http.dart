import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/user/user.dart';

class PlaygroundHttp extends StatelessWidget {
  getUser() async {
    final uri = Uri.parse('https://nid-node.ninghao.co/users/21');
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('发送请求'),
            onPressed: getUser,
          ),
          ElevatedButton(
            child: Text('创建用户'),
            onPressed: createUser,
          ),
        ],
      ),
    );
  }
}

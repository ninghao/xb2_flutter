import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PlaygroundHttp extends StatelessWidget {
  getUser() async {
    final uri = Uri.parse('https://nid-node.ninghao.co/users/1');
    final response = await http.get(uri);

    print('状态码 ${response.statusCode}');
    print('响应主体 ${response.body}');

    if (response.statusCode == 200) {
      final user = jsonDecode(response.body);
      print('解码之后 $user');
      print(user['name']);
    }
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
        ],
      ),
    );
  }
}

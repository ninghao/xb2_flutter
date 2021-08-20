import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/post/post.dart';

class PostIndexModel extends ChangeNotifier {
  List<Post>? posts;

  // PostIndexModel() {
  //   getPosts();
  // }

  List<Post> parsePosts(responseBody) {
    final List<Post> parsed = jsonDecode(responseBody)
        .map<Post>((item) => Post.fromJson(item))
        .toList();

    return parsed;
  }

  Future<List<Post>> getPosts() async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');
    final response = await http.get(uri);
    final parsed = parsePosts(response.body);
    posts = parsed;
    notifyListeners();

    return parsed;
  }
}

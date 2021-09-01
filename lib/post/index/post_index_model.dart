import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/post/post.dart';

enum PostListLayout {
  stack,
  grid,
}

class PostIndexModel extends ChangeNotifier {
  List<Post>? posts;
  final AppService appService;
  PostListLayout? layout = PostListLayout.stack;

  PostIndexModel({
    required this.appService,
    this.posts,
  });

  setLayout(PostListLayout data) {
    layout = data;
    notifyListeners();
  }

  storeLayout(PostListLayout data) async {
    setLayout(data);

    final prefs = await SharedPreferences.getInstance();
    prefs.setString('postListLayout', data.toString());
  }

  List<Post> parsePosts(responseBody) {
    final List<Post> parsed = jsonDecode(responseBody)
        .map<Post>((item) => Post.fromJson(item))
        .toList();

    return parsed;
  }

  Future<List<Post>> getPosts({required String sort}) async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts?sort=$sort');
    final response = await appService.apiHttpClient.get(uri);
    final parsed = parsePosts(response.body);
    posts = parsed;
    notifyListeners();

    return parsed;
  }
}

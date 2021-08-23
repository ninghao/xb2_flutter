import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/post/post.dart';

class PostShowModel extends ChangeNotifier {
  Post? post;

  setPost(Post data) {
    post = data;
    notifyListeners();
  }

  Future<Post> getPostById(String postId) async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts/$postId');
    final response = await http.get(uri);
    final responseBody = jsonDecode(response.body);
    final parsed = Post.fromJson(responseBody);

    post = parsed;
    notifyListeners();

    return parsed;
  }
}

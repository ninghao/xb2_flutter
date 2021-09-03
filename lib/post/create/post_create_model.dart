import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/app/exceptions/http_exception.dart';

class PostCreateModel extends ChangeNotifier {
  final AppService appService;

  PostCreateModel({
    required this.appService,
  });

  String? title;
  String? content;
  bool loading = false;

  setTitle(String? data) {
    title = data;
  }

  setContent(String? data) {
    content = data;
  }

  setLoading(bool data) {
    loading = data;
    notifyListeners();
  }

  reset() {
    title = null;
    content = null;
  }

  Future<int> createPost() async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');

    final response = await appService.apiHttpClient.post(uri, body: {
      'title': title,
      'content': content,
    });

    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 201) {
      final postId = responseBody['insertId'];
      return postId;
    } else {
      throw HttpException(responseBody['message']);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/app_config.dart';

class PostIndexModel extends ChangeNotifier {
  dynamic posts;

  // PostIndexModel() {
  //   getPosts();
  // }

  getPosts() async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');
    final response = await http.get(uri);

    posts = response.body;
    notifyListeners();
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/app/exceptions/http_exception.dart';

class LikeCreateModel extends ChangeNotifier {
  final AppService appService;

  LikeCreateModel({
    required this.appService,
  });

  createUserLikePost(int postId) async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts/$postId/like');
    final response = await appService.apiHttpClient.post(uri);
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 201) {
      notifyListeners();
    } else {
      throw HttpException(responseBody['message']);
    }
  }
}

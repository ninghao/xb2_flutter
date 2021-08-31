import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/app/exceptions/http_exception.dart';

class LikeDestroyModel extends ChangeNotifier {
  final AppService appService;

  LikeDestroyModel({
    required this.appService,
  });

  deleteUserLikePost(int postId) async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts/$postId/like');
    final response = await appService.apiHttpClient.delete(uri);
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      notifyListeners();
    } else {
      throw HttpException(responseBody['message']);
    }
  }
}

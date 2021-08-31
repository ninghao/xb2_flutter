import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/auth/auth_model.dart';

class ApiHttpClient extends http.BaseClient {
  final String token;

  ApiHttpClient({
    required this.token,
  });

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (token.isNotEmpty) {
      request.headers.putIfAbsent('Authorization', () => 'Bearer $token');
    }

    return request.send();
  }
}

class AppService extends ChangeNotifier {
  final AuthModel authModel;
  late ApiHttpClient apiHttpClient;

  AppService({
    required this.authModel,
  }) {
    apiHttpClient = ApiHttpClient(token: authModel.token);
  }
}

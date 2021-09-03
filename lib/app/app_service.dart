import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:xb2_flutter/app/app_config.dart';
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

  Future<http.StreamedResponse> uploadImage({
    required PlatformFile file,
    required int postId,
  }) async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/files?post=$postId');
    final request = http.MultipartRequest('POST', uri);
    request.headers.putIfAbsent('Autorization', () => 'Bearer $token');

    final multipartFile = await http.MultipartFile.fromPath(
      'file',
      file.path,
      contentType: MediaType('image', file.extension ?? 'jpg'),
    );

    request.files.add(multipartFile);

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

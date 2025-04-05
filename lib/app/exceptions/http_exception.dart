import 'package:xb2_flutter/app/exceptions/app_exception.dart';

class HttpException extends AppException {
  HttpException([super.message = '网络请求出了点问题 🌋']);
}

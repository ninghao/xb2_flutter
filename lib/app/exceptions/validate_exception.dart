import 'package:xb2_flutter/app/exceptions/app_exception.dart';

class ValidateException extends AppException {
  ValidateException([super.message = '未通过数据验证。']);
}

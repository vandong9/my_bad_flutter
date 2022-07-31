import 'package:dio/dio.dart';
import '../../model/response_data.dart';

abstract class RemoteBase {
  void setPublicToken({Map<String, dynamic> param});
}

class RemoteBaseImpl implements RemoteBase {
  static const Map<String, String> headerDefinition = {
    Headers.contentTypeHeader: Headers.jsonContentType,
    Headers.acceptHeader: 'application/json',
  };

  final Dio dio = Dio()..options.headers.addAll(headerDefinition);

  @override
  void setPublicToken({Map<String, dynamic>? param}) {
    if (param != null && param.isNotEmpty) {
      dio.options.headers.addAll(param);
    }
  }

  ResponseData toResponseData(Response response) {
    return ResponseData.convertResponse(
        response.statusCode == 200, response.data);
  }

  T checkStatusCode<T>(
    Response response,
    Function(dynamic) action,
  ) {
    return action(response.data) as T;
  }
}

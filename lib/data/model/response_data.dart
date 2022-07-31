class ResponseData {
  dynamic _data;
  String? _message;
  String? _responseCode;
  bool? _status;

  ResponseData({
    String? data,
    bool? statusCode,
  }) {
    _data = data;
    _status = statusCode;
  }

  String get responseCode => _responseCode!;

  set responseCode(String responseCode) => _responseCode = responseCode;

  String get message => _message!;

  set message(String message) => _message = message;

  // ignore: unnecessary_getters_setters
  dynamic get data => _data;

  // ignore: unnecessary_getters_setters
  set data(dynamic data) => _data = data;

  bool get statusCode => _status ?? false;

  set statusCode(bool statusCode) => _status = statusCode;

  ResponseData.fromJson(Map<String, dynamic>? json) {
    _data = json!['data'];
    _message = json['statusMessage'] ?? json['message'];
    _status = json['status'];
    _responseCode = json['response_code'];
  }

  ResponseData.convertResponse(bool status, Map<String, dynamic>? json) {
    _data = json!['data'];
    _message = json['statusMessage'] ?? json['message'];
    _status = status;
    _responseCode = json['response_code'];
  }
}

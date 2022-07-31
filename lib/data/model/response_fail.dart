import 'package:equatable/equatable.dart';
import '../../utils/log_utils.dart';

class ResponseFail extends Equatable {
  final String? name;
  final List<Details>? details;

  ResponseFail({
    this.name,
    this.details,
  });

  ResponseFail copyWith({
    String? name,
    List<Details>? details,
  }) {
    return ResponseFail(
      name: name ?? this.name,
      details: details ?? this.details,
    );
  }

  factory ResponseFail.fromJson(Map<String, dynamic> json) {
    try {
      final responseFail = ResponseFail(
        name: json['name'],
        details: json.containsKey('details')
            ? json['details']
                ?.map<Details>((e) => Details.fromJson(e))
                ?.toList()
            : null,
      );
      return responseFail;
    } catch (e, stacktrace) {
      LogUtils.d(e, stacktrace: stacktrace.toString());
    }
    throw 'Wrong data null';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    try {
      data['name'] = name;
      if (details != null) {
        data['details'] = details?.map((v) => v.toJson()).toList();
      }
    } catch (e, stacktrace) {
      LogUtils.d(e, stacktrace: stacktrace.toString());
    }

    return data;
  }

  @override
  List<Object?> get props => [
        name,
        details,
      ];
}

class Details extends Equatable {
  final String? message;

  Details({
    this.message,
  });

  Details copyWith({
    String? message,
  }) {
    return Details(
      message: message ?? this.message,
    );
  }

  factory Details.fromJson(Map<String, dynamic> json) {
    try {
      final details = Details(
        message: json['message'],
      );
      return details;
    } catch (e, stacktrace) {
      LogUtils.d(e, stacktrace: stacktrace.toString());
    }
    throw 'Wrong data null';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    try {
      data['message'] = message;
    } catch (e, stacktrace) {
      LogUtils.d(e, stacktrace: stacktrace.toString());
    }

    return data;
  }

  @override
  List<Object?> get props => [
        message,
      ];
}

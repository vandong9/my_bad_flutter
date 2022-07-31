import 'package:equatable/equatable.dart';
import '../model/response_fail.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class RemoteDataFailure extends Failure {
  final String errorCode;
  final String errorMessage;
  final dynamic dataFail;

  RemoteDataFailure({
    required this.errorCode,
    required this.errorMessage,
    this.dataFail,
  });

  String getMessage() {
    if (dataFail != null && dataFail is Map) {
      try {
        final response = ResponseFail.fromJson(dataFail);
        return response.details?.map((e) => e.message).join('\n') ??
            errorMessage;
      } catch (e) {
        return errorMessage;
      }
    }
    return errorMessage;
  }
}

class ExceptionDataFailure extends Failure {
  final String? errorCode;
  final String errorMessage;

  ExceptionDataFailure({this.errorCode, required this.errorMessage});
}

class NetworkFailure extends Failure {}

class NoResultFailure extends Failure {}

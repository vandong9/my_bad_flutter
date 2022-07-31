import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../injector.dart';
import '../../utils/network_info.dart';
import '../source/failure.dart';

class Repository {
  final NetworkInfo networkInfo = sl<NetworkInfo>();
  Locale? _currentLocal;

  Locale get currentLocal => _currentLocal!;

  set currentLocal(Locale currentLocal) => _currentLocal = currentLocal;

  Future<Either<Failure, T>> catchData<T>(Function action) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await action() as T);
      } on RemoteDataFailure catch (e) {
        return Left(e);
      } on DioError catch (e) {
        var mess = e.response?.statusMessage;
        final errorResponseData = e.response?.data;
        if (errorResponseData != null && errorResponseData is List) {
          mess = errorResponseData.join(',');
          // UIUtil.showToast(mess);
        } else if (errorResponseData != null &&
            errorResponseData is Map &&
            errorResponseData.containsKey('responseStatus')) {
          mess = errorResponseData['responseStatus']['message'];
        } else if (errorResponseData != null) {
          mess = errorResponseData.toString();
        }
        return Left(
            RemoteDataFailure(errorCode: e.toString(), errorMessage: mess!));
      } on Exception catch (e) {
        return Left(RemoteDataFailure(
            errorCode: e.toString(), errorMessage: e.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}

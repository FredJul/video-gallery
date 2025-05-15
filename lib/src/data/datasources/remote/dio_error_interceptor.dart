import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:videogallery/src/domain/common/exceptions.dart';

class DioErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Dio exception', error: err); // TODO: use logger instead

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        throw NetworkException();
      case DioExceptionType.badResponse:
        if (err.response?.statusCode != null) {
          throw ServerException(err.response!.statusCode!);
        }
        throw UnexpectedException();
      default:
        throw UnexpectedException();
    }
  }
}

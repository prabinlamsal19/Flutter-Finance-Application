/*
 * Copyright (c) 2023.
 * Author: Prabin Lamsal 
 * Company: EB Pearls
 */

import 'dart:io';

import 'package:dio/dio.dart';
import '../errors/api_exception.dart';

extension ApiExceptionDioX on DioException {
  ApiException get toException {
    switch (type) {
      //TODO handle exceptions according to server response
      case DioExceptionType.badResponse:
        final code = response?.statusCode!;
        if (code == 422 || code == 400) {
          return ApiException.unprocessableEntity(
            message: response?.data['message'] ?? {},
          );
        } else if (code == 403) {
          /// logout user on un-authorized access
          /// TODO Implement the below line later
          // getIt<AppCubit>().logout();
          throw const ApiException.unAuthorized();
        } else if (code == 401) {
          throw const ApiException.unAuthenticated();
        } else {
          return ApiException.serverException(
            message: message ?? 'Server Error',
          );
        }
      case DioExceptionType.unknown:
        if (error is SocketException) {
          return const ApiException.network();
        } else {
          return ApiException.serverException(
            message: message ?? 'Server Error',
          );
        }
      default:
        return ApiException.serverException(
          message: message ?? 'UnExpected Error',
        );
    }
  }
}

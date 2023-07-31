/*
 * Copyright (c) 2023.
 * Author: Jiten Basnet
 * Company: EB Pearls
 */

import 'package:dio/dio.dart';
import 'package:eml/src/core/logging/logger.dart';

import '../errors/api_exception.dart';
import '../extensions/api_extension.dart';

/// [BaseRemoteSource] for handling network requests for dio client
abstract class BaseRemoteSource {
  BaseRemoteSource(this._dio);

  final Dio _dio;

  /// [T] is return type from network request
  ///
  /// [request] callback returns [Response] and accepts [Dio] instance
  ///
  /// [onResponse] callback returns [T] and accepts [dynamic] data from [Response]
  ///
  /// throws [ApiException]

  Future<T> networkRequest<T>({
    required Future<Response> Function(Dio dio) request,
    required T Function(dynamic data) onResponse,
  }) async {
    try {
      final response = await request(_dio);

      if (response.statusCode! >= 200 || response.statusCode! < 300) {
        return onResponse(response.data ?? {});
      } else {
        throw const ApiException.serverException(
          message: 'UnExpected Error Occurred!',
        );
      }
    } on DioException catch (e) {
      logger.e('dio exception: ${e.stackTrace}');
      throw e.toException;
    } catch (e) {
      logger.e(e);
      throw const ApiException.serverException(
        message: 'UnExpected Error Occurred!',
      );
    }
  }
}

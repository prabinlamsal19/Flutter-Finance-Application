/*
 * Copyright (c) 2023
 * Author: Jiten Basnet
 * Company: EB Pearls
 */
import 'package:dartz/dartz.dart';
import 'package:personal_finance/src/core/errors/api_exception.dart';
import 'package:personal_finance/src/core/errors/app_error.dart';
import 'package:personal_finance/src/core/typedefs/typedefs.dart';
import '../logging/logger.dart';

/// {@template base_repository}
/// A [BaseRepository] class for handling network status and exceptions
/// {@endtemplate}
abstract class BaseRepository {
  const BaseRepository();

  /// [T] is Return type for [EitherResponse]
  ///
  /// [R] is response type from server that is params for [onSuccess] callback
  ///
  /// [onSuccess] callback returns the [T] and accept [R]
  ///
  EitherResponse<T> handleNetworkCall<R, T>({
    required Future<R> call,
    required T Function(R data) onSuccess,
  }) async {
    try {
      final data = await call;
      return right(onSuccess(data));
    } on ApiException catch (e) {
      logger.e(e);
      return left(
        e.when(
          serverException: (message) =>
              AppError.serverError(message: message).toString(),
          unprocessableEntity: (errors) =>
              AppError.validationsError(message: errors).toString(),
          unAuthorized: () => const AppError.unAuthorized().toString(),
          network: () => const AppError.noInternet().toString(),
          unAuthenticated: () => const AppError.unAuthenticated().toString(),
        ),
      );
    }
  }
}

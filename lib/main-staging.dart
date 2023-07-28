import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:personal_finance/src/core/logging/logger.dart';

import 'app/app.dart';
import 'bootstrap.dart';
import 'features/graphql_blogs/utils/ferry_service.dart';

Future<void> main() async {
  return runZonedGuarded(() async {
    final binding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: binding);
    await bootstrap(
        createEnv: () => Env.instance.createEnv(StagingEnv()),
        builder: () => ProviderScope(overrides: [
              ferryClientProvider.overrideWithValue(GetIt.instance<Client>())
            ], child: MyApp()));
  }, (error, stack) => _logCrashes);
}

_initRootLogger() {
  Logger.level = Level.all;
}

void _logCrashes(Object error, StackTrace stackTrace) {
  logger.e(error.toString());
}

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:personal_finance/features/stock_rest/presentation/pages/stock_page.dart';
import 'package:personal_finance/src/core/di/injector.dart';
import 'app/app.dart';
import 'config/routes/routes_imports.dart';
import 'features/add_transaction/domain/repositories/darkModeProvider.dart';
import 'features/add_transaction/presentation/bloc/transaction_bloc.dart';
import 'features/profile/presentation/bloc/profile_info_bloc/profile_info_bloc.dart';
import 'features/signup/presentation/bloc/sign_in_bloc.dart';
import 'features/signup/presentation/cubits/cubit/pw_cubit.dart';
import 'features/statistics/presentation/bloc/chart_bloc.dart';
import 'features/stock_rest/data/models/stock_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'graphql_blogs/utils/ferry_service.dart';
import 'graphql_blogs/utils/hive_service.dart';

Future<void> bootstrap(
    {required Widget Function() builder, required Function() createEnv}) async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  WidgetsFlutterBinding.ensureInitialized();
  //hive
  await Hive.initFlutter();
  Hive.registerAdapter(StockModelAdapter());
  await Hive.openBox<StockModel>('stocks');

  //ferrygraphql
  final container = ProviderContainer();
  final hiveService = container.read(hiveServiceProvider);
  final ferryService = container.read(ferryServiceProvider);
  await hiveService.init();
  final client = await ferryService.initClient();
  GetIt.instance.registerSingleton<Client>(client);

  await createEnv();

  await configureInjection();

  runApp(builder());
}

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import '../config/routes/routes_imports.dart';
import '../features/add_transaction/domain/repositories/darkModeProvider.dart';
import '../features/add_transaction/presentation/bloc/transaction_bloc.dart';
import '../features/profile/presentation/bloc/profile_info_bloc/profile_info_bloc.dart';
import '../features/signup/presentation/bloc/sign_in_bloc.dart';
import '../features/signup/presentation/cubits/cubit/pw_cubit.dart';
import '../features/statistics/presentation/bloc/chart_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../graphql_blogs/utils/ferry_service.dart';

class MyApp extends ConsumerWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);
    final client = GetIt.instance<Client>();
    FlutterNativeSplash.remove();
    return ProviderScope(
      overrides: [ferryClientProvider.overrideWithValue(client)],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PwCubit(),
          ),
          BlocProvider(create: (context) => ConfirmPwCubit()),
          BlocProvider(create: (context) => SignInBloc()),
          // BlocProvider(create: (_)=> AuthenticationBloc(authenticationRepository: authenticationRepository, userRepository: userRepository),),
          BlocProvider(create: (context) => TransactionBloc()),
          BlocProvider(create: (context) => ProfileInfoBloc()),
          BlocProvider(create: (context) => ChartBloc())
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
              primarySwatch: Colors.green,
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)),
          // routerDelegate: _appRouter.delegate(),
          routerConfig: _appRouter.config(),
          // home: SignupPage()
        ),
      ),
    );
  }
}

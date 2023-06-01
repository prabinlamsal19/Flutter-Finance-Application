import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:personal_finance/add_transaction/domain/repositories/darkModeProvider.dart';
import 'package:personal_finance/profile/presentation/bloc/profile_info_bloc/profile_info_bloc.dart';
import 'package:personal_finance/signup/presentation/bloc/sign_in_bloc.dart';
import 'package:personal_finance/signup/presentation/cubits/cubit/pw_cubit.dart';
import 'package:personal_finance/statistics/presentation/bloc/chart_bloc.dart';
import 'package:personal_finance/stock_rest/presentation/pages/stock_page.dart';
import 'add_transaction/presentation/bloc/transaction_bloc.dart';
import 'config/routes/routes_imports.dart';
import 'stock_rest/data/models/stock_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late Box box;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StockModelAdapter());
  await Hive.openBox<StockModel>('stocks');
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);
    return MultiBlocProvider(
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
    );
  }
}

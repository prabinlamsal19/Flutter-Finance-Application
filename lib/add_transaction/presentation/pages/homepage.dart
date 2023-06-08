import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_finance/add_transaction/data/repository/local_transaction_storage.dart';
import 'package:personal_finance/add_transaction/domain/repositories/darkModeProvider.dart';
import 'package:personal_finance/add_transaction/presentation/pages/transaction_page.dart';
import 'package:personal_finance/blogs/presentation/pages/blog_page.dart';
import 'package:personal_finance/config/routes/routes_imports.gr.dart';
import 'package:personal_finance/notes/presentation/pages/notes_screen.dart';
import 'package:personal_finance/statistics/presentation/pages/Statistics.dart';
import '../../../signup/repository/mongo_repo_signup.dart';
import '../../../stock_rest/presentation/pages/stock_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../../domain/repositories/darkModeProvider.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var darkMode = ref.watch(darkModeProvider);

    return AutoTabsRouter.tabBar(
      routes: [
        const TransactionPageRoute(),
        PieChartScreenRoute(),
        const StocksPageRoute(),
        const BlogPageRoute(),
        const ProfilePageRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            leading: Switch(
              value: darkMode,
              onChanged: (value) =>
                  ref.read(darkModeProvider.notifier).toggle(),
            ),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(icon: Icon(Icons.book_online)),
                Tab(icon: Icon(Icons.bar_chart)),
                Tab(icon: Icon(Icons.token)),
                Tab(icon: Icon(Icons.question_mark)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
            title: const Text("Personal Finance"),
          ),
          body: child,
        );
      },
    );
  }
}

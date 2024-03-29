import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_finance/features/add_transaction/data/repository/local_transaction_storage.dart';
import 'package:personal_finance/features/add_transaction/domain/repositories/darkModeProvider.dart';
import 'package:personal_finance/features/add_transaction/presentation/pages/transaction_page.dart';
import 'package:personal_finance/features/blogs/presentation/pages/blog_page.dart';
import 'package:personal_finance/config/routes/routes_imports.gr.dart';
import 'package:personal_finance/features/notes/presentation/pages/notes_screen.dart';
import 'package:personal_finance/features/statistics/presentation/pages/Statistics.dart';
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
  void _handleDeleteButtonPressed() {
    deleteAllTransactionsLocally();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('All transactions deleted')),
    );
  }

  @override
  Widget build(BuildContext context) {
    var darkMode = ref.watch(darkModeProvider);

    return AutoTabsRouter.tabBar(
      routes: [
        const TransactionPageRoute(),
        PieChartScreenRoute(),
        const StocksPageRoute(),
        const BlogPageRoute(),
        ProfilePageRoute(),
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
            title: const Text("Personal Finance"),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _handleDeleteButtonPressed;
                  });
                },
                icon: Icon(Icons.delete),
                tooltip: 'Delete All Transactions',
              ),
            ],
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
          ),
          body: child,
        );
      },
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/add_transaction/data/repository/local_transaction_storage.dart';
import 'package:personal_finance/add_transaction/presentation/pages/transaction_page.dart';
import 'package:personal_finance/blogs/presentation/pages/blog_page.dart';
import 'package:personal_finance/notes/presentation/pages/notes_screen.dart';
import 'package:personal_finance/statistics/presentation/pages/Statistics.dart';
import '../../../signup/repository/mongo_repo_signup.dart';
import '../../../stock_rest/presentation/pages/stock_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(icon: Icon(Icons.book_online)),
          Tab(icon: Icon(Icons.bar_chart)),
          Tab(
            icon: Icon(Icons.token),
          ),
          Tab(
            icon: Icon(Icons.question_mark),
          ),
          Tab(
            icon: Icon(Icons.person),
          ),
          // Tab(
          //   icon: Icon(Icons.abc),
          // )
        ]),
        title: const Text("Personal Finance"),
      ),
      body: TabBarView(controller: _tabController, children: [
        const TransactionPage(),
        PieChartScreen(),
        StocksPage(),
        const BlogPage(),
        const ProfilePage(),
      ]),
    );
  }
}

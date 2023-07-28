import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/features/blogs/presentation/pages/personal_blog/personal_blogs.dart';
import 'package:personal_finance/features/blogs/presentation/pages/graphql_blog/rest_blog.dart';

import '../../../../graphql_blogs/pages/people_page.dart';

@RoutePage()
class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [RestBlogPage(), PersonalBlogPage(), PeoplePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'All Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.personal_video_rounded),
            label: 'Personal Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Star Wars Cast',
          ),
        ],
      ),
    );
  }
}

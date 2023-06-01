import 'package:flutter/material.dart';
import '../../../data/models/blog_model.dart';
import '../../../data/repositories/sqlite_service.dart';
import '../../widgets/personal_blog_row.dart';
import 'add_personal_blog_page.dart';

class PersonalBlogPage extends StatefulWidget {
  const PersonalBlogPage({Key? key}) : super(key: key);

  @override
  PersonalBlogPageState createState() => PersonalBlogPageState();
}

class PersonalBlogPageState extends State<PersonalBlogPage> {
  List<BlogModel> _blogs = [];
  late final SqliteService _sqliteService = SqliteService();

  void _navigateToAddBlogPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddPersonalBlogPage()),
    );

    if (result != null && result is BlogModel) {
      setState(() {
        _blogs.add(result);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _sqliteService.initializeDB().then((_) async {
      _refreshBlogs(); //removed the await keyword
      setState(() {
        // Your state updates, if any
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _blogs.length,
              itemBuilder: (context, index) {
                return PersonalBlogRow(
                    title: _blogs[index].title,
                    excerpt: _blogs[index].content,
                    coverURL:
                        _blogs[index].image ?? Image.asset("assets/bgg.jpeg"));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddBlogPage,
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // All items
// This function is used to fetch all data from the database
  void _refreshBlogs() async {
    final data = await _sqliteService.getItems();
    setState(() {
      _blogs = data;
    });
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/blog_model.dart';
import 'add_personal_blog_page.dart';

final blogListProvider =
    StateNotifierProvider<BlogListNotifier, List<BlogModel>>(
  (ref) => BlogListNotifier(),
);

class BlogListNotifier extends StateNotifier<List<BlogModel>> {
  BlogListNotifier() : super([]);

  void addBlog(BlogModel blog) {
    state = [...state, blog];
  }
}

@RoutePage()
class PersonalBlogPage extends ConsumerWidget {
  const PersonalBlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blogs = ref.watch(blogListProvider);

    void navigateToAddBlogPage() async {
      final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AddPersonalBlogPage()),
      );

      if (result != null && result is BlogModel) {
        ref.read(blogListProvider.notifier).addBlog(result);
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: blogs.length,
              itemBuilder: (context, index) {
                final blog = blogs[index];
                return PersonalBlogRow(
                  title: blog.title,
                  excerpt: blog.content,
                  coverURL: blog.image ?? Image.asset("assets/bgg.jpeg"),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: navigateToAddBlogPage,
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class PersonalBlogRow extends StatelessWidget {
  final String title;
  final String excerpt;
  final dynamic coverURL;

  const PersonalBlogRow({
    required this.title,
    required this.excerpt,
    required this.coverURL,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(excerpt),
      leading: coverURL is Image
          ? coverURL
          : Image.asset(
              coverURL,
              height: 50,
              width: 50,
            ),
    );
  }
}

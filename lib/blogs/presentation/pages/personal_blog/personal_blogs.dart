import 'dart:io';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

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

class AddPersonalBlogPage extends StatefulWidget {
  const AddPersonalBlogPage({Key? key}) : super(key: key);

  @override
  AddPersonalBlogPageState createState() => AddPersonalBlogPageState();
}

class AddPersonalBlogPageState extends State<AddPersonalBlogPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  Image? _selectedImage;

  Future<void> _selectImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? files = await picker.pickImage(source: ImageSource.gallery);
    if (files != null) {}
    setState(() {
      _selectedImage = Image.file(File(files?.path ?? "assets/bgg.jpeg"));
    });
  }

  void _addBlog(BuildContext context) {
    String title = _titleController.text;
    String content = _contentController.text;

    if (title.isNotEmpty && content.isNotEmpty) {
      Navigator.pop(
        context,
        BlogModel(title: title, content: content, image: _selectedImage),
      );
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Add Blog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _contentController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _selectImage,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: const Icon(Icons.image),
              label: const Text(
                'Select Image',
                style: TextStyle(fontSize: 12),
              ),
            ),
            if (_selectedImage != null) ...[
              const SizedBox(height: 16),
              Image(
                image: _selectedImage!.image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => _addBlog(context),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: const Icon(Icons.add),
              label: const Text(
                'Add Blog',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
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

class BlogModel {
  final String title;
  final String content;
  final Image? image;

  BlogModel({
    required this.title,
    required this.content,
    this.image,
  });
}

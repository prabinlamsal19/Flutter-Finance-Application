import 'package:flutter/material.dart';

class BlogModel {
  final String title;
  final String content;
  final Image? image;

  BlogModel({required this.title, required this.content, required this.image});

  BlogModel.fromMap(Map<String, dynamic> item)
      : title = item["title"],
        content = item["content"],
        image = item["image"];

  Map<String, dynamic> toMap() {
    return {'title': title, 'content': content, 'image': image};
  }
}

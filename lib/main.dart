import 'package:flutter/material.dart';
import 'package:news_app/style/newsAppStyle.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsAppStyle(catagory: "general"),
    );
  }
}

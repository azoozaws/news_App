// this file for form of news like size of text ...
import 'package:flutter/material.dart';
import 'package:news_app/models/modelOfListOfCategoryNews.dart';

// ignore: must_be_immutable
class CategoryNews extends StatelessWidget {
  const CategoryNews({super.key, required this.categoryNews});
  final ModelOfListOfCategoryNews categoryNews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(categoryNews.imageOfNews),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            categoryNews.titleOfNews,
            // just show to line of text
            maxLines: 2,
            //if text more 2 line (2 line because i set for maxLine 2) will put ...
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            categoryNews.subTitleOfNews,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

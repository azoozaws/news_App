// this file for list view of news
import 'package:flutter/material.dart';
import 'package:news_app/components/CategoryNews.dart';
import 'package:news_app/models/modelOfListOfCategoryNews.dart';

class ListViewNews extends StatelessWidget {

  final List<ModelOfListOfCategoryNews> articles;

  const ListViewNews({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return CategoryNews(categoryNews: articles[index]);
              },
            ),
          );
  }
}

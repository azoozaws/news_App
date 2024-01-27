// this file for list view of news
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/modelOfListOfCategoryNews.dart';
import 'package:news_app/services/ApiNewsServices.dart';
import 'package:news_app/style/listViewNews.dart';

class HoldeAndRequest extends StatefulWidget {
  const HoldeAndRequest({
    super.key, required this.catagory,
  });
  final String catagory;
  @override
  State<HoldeAndRequest> createState() => _HoldeAndRequest();
}

class _HoldeAndRequest extends State<HoldeAndRequest> {
  var articles;
  @override
  void initState() {
    super.initState();
    articles = ApiNewsServices(Dio()).getNews(catagory: widget.catagory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ModelOfListOfCategoryNews>>(
      future: articles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListViewNews(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 150),
                child: Text("Error"),
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 150),
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}

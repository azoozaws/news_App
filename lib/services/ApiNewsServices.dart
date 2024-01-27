import 'package:dio/dio.dart';
import 'package:news_app/models/modelOfListOfCategoryNews.dart';

class ApiNewsServices {
  final Dio dio;

  ApiNewsServices(this.dio);

  Future<List<ModelOfListOfCategoryNews>> getNews(
      {required String catagory}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$catagory&country=us&apiKey=c9556fc3aea347908a3c62e55076f6ee');

      Map<String, dynamic> data = response.data;
      List<dynamic> list = data["articles"];
      List<ModelOfListOfCategoryNews> articles = [];
      for (var listOfArticles in list) {
        articles.add(ModelOfListOfCategoryNews.fromJson(listOfArticles));
      }
      return articles;
    } catch (e) {
      return [];
    }
  }
}

//this modle for form news
class ModelOfListOfCategoryNews {
  String imageOfNews;
  String titleOfNews;
  String subTitleOfNews;
  ModelOfListOfCategoryNews({
    required this.imageOfNews,
    required this.titleOfNews,
    required this.subTitleOfNews,
  });

  factory ModelOfListOfCategoryNews.fromJson(json) {
    final String title;
    final String imageOfNews;
    final String subtitle;
    json["title"] == null ? title = "Removed" : title = json["title"];
    json["urlToImage"] == null
        ? imageOfNews =
            "https://st4.depositphotos.com/14953852/22772/v/450/depositphotos_227724992-stock-illustration-image-available-icon-flat-vector.jpg"
        : imageOfNews = json["urlToImage"];
    json["description"] == null
        ? subtitle = "Not available"
        : subtitle = json["description"];
    return ModelOfListOfCategoryNews(
        imageOfNews: imageOfNews, titleOfNews: title, subTitleOfNews: subtitle);
  }
}

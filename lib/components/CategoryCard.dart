// this file for form of card like size of text ...
import 'package:flutter/material.dart';
import 'package:news_app/models/modelOfListOfCategoryCard.dart';
import 'package:news_app/style/newsAppStyle.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryCard});
  final ModelOfListOfCategoryCard categoryCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return NewsAppStyle(catagory: categoryCard.textOfCard);
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 140,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              //if we want to make image to background we must invoke BoxDecoration and into it invoke DecorationImage
              image: AssetImage(categoryCard.imageOfCard),
            ),
          ),
          child: Center(
            child: Text(
              categoryCard.textOfCard,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

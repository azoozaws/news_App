// this file for list view of card
import 'package:flutter/material.dart';
import 'package:news_app/components/CategoryCard.dart';
import 'package:news_app/models/modelOfListOfCategoryCard.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
    required this.listOfCategoryCard,
  });

  final List<ModelOfListOfCategoryCard> listOfCategoryCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        //Axis.horizontal, mean make list view scroll horizntally
        scrollDirection: Axis.horizontal,
        itemCount: listOfCategoryCard.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryCard: listOfCategoryCard[index]);
        },
      ),
    );
  }
}

/*
this have style of appbar
and have information of list view card like image and text
and have information of list view news like image and first text and second text
 */
import 'package:flutter/material.dart';
import 'package:news_app/components/holdeAndRequest.dart';
import 'package:news_app/models/modelOfListOfCategoryCard.dart';
import 'package:news_app/style/listViewCard.dart';

class NewsAppStyle extends StatelessWidget {
  final String catagory;
  const NewsAppStyle({super.key, required this.catagory});
  @override
  Widget build(BuildContext context) {
    final List<ModelOfListOfCategoryCard> listOfCategoryCard = [
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/business.avif",
        textOfCard: "Business",
      ),
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/entertaiment.avif",
        textOfCard: "Entertainment",
      ),
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/general.avif",
        textOfCard: "General",
      ),
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/health.avif",
        textOfCard: "Health",
      ),
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/science.avif",
        textOfCard: "Science",
      ),
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/sports.avif",
        textOfCard: "Sports",
      ),
      ModelOfListOfCategoryCard(
        imageOfCard: "assets/technology.jpeg",
        textOfCard: "Technology",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        //elevation: 0, mean without shadow into appbar and around it
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                fontSize: 24,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListViewCard(listOfCategoryCard: listOfCategoryCard),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          HoldeAndRequest(
            catagory: catagory,
          ),
        ],
      ),
    );
  }
}

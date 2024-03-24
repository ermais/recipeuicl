import 'package:flutter/material.dart';
import 'package:recipeuicl/recipe_detail.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem(
      this.recipePhoto, this.recipeName, this.createrName, this.createrPhoto,
      {super.key});
  final String recipePhoto;
  final String recipeName;
  final String createrName;
  final String createrPhoto;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double cardWidth = width * 0.45;
    double cardHeight = height * 0.25;
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RecipeDetail()))
        },
        child: Container(
          height: cardHeight,
          width: cardWidth,
          decoration: const BoxDecoration(
              color: cardBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: cardWidth * 0.6,
                height: cardWidth * 0.6,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child:
                        ClipRect(child: Image(image: AssetImage(recipePhoto)))),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      recipeName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                          fontSize: 24),
                      softWrap: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          createrName,
                          style: const TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.black38,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 2.1),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: ClipOval(
                            child: Image(
                              image: AssetImage(createrPhoto),
                              fit: BoxFit.fitHeight,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

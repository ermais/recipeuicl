import 'package:flutter/material.dart';
import 'package:recipeuicl/componets/category_item.dart';
import 'package:recipeuicl/componets/recipe_item.dart';
import 'package:recipeuicl/data.dart';
import 'package:recipeuicl/recipe_detail.dart';

class GroceryHomePage extends StatefulWidget {
  const GroceryHomePage({super.key});

  @override
  State<GroceryHomePage> createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        child: SafeArea(
          child: Row(
            children: [
              Icon(
                Icons.no_adult_content,
                size: 35,
                color: selectedColor,
              ),
              Icon(
                Icons.border_clear_outlined,
                size: 35,
                color: selectedColor,
              )
            ],
          ),
        ),
      ),
      Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                // color: bgColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "My Recipes",
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.45,
                            fontSize: 60),
                      ),
                    ),

                    //List of categories
                    SizedBox(
                      height: 80,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: items.length,
                                itemBuilder: (context, _index) {
                                  return CategoryItem(
                                      items[_index], _index, _selectedItem,
                                      (i) {
                                    setState(() {
                                      _selectedItem = i;
                                    });
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    //Top recipes goes here

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "T o p",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 32,
                                color: cardBackgroundColor,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 2.1),
                          ),
                        ),
                        Container(
                          height: height * 0.4,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: recipes.length,
                            itemBuilder: (context, index) {
                              return RecipeItem(
                                  recipes[index]["recipePhoto"],
                                  recipes[index]["recipeName"],
                                  recipes[index]["createrName"],
                                  recipes[index]["createrPhoto"]);
                            },
                          ),
                        ),
                      ],
                    ),

                    //made recipes

                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: madeRecipeColor,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Made it",
                                  style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 28,
                                      color: selectedColor),
                                ),
                              ),
                              Icon(Icons.filter_list)
                            ],
                          ),
                          Text(
                            "15 recipes",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(4),
              padding:
                  const EdgeInsets.only(left: 8, top: 30, right: 8, bottom: 8),
              height: 94,
              width: width,
              decoration: const BoxDecoration(
                  color: cardBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(48))),
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: const Text(
                  "#Trending Topics",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 24,
                      fontFamily: "Raleway"),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          right: 10,
          bottom: 10,
          child: Row(
            children: [
              Container(
                height: 120,
                width: 120,
                margin: EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: const Center(
                  child: Icon(
                    Icons.search,
                    size: 70,
                    color: Colors.black26,
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    color: selectedColor,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 70,
                    color: Colors.white,
                    weight: 0.5,
                  ),
                ),
              )
            ],
          )),
    ]);
  }
}

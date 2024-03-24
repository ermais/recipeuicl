import 'package:flutter/material.dart';
import 'package:recipeuicl/componets/utils/clipper.dart';

const Color selectedColor = Color.fromRGBO(95, 69, 53, 1);
const Color bgColor = Color.fromRGBO(246, 242, 230, 1);
const Color cardBackgroundColor = Color.fromRGBO(234, 226, 210, 1);
const Color madeRecipeColor = Color.fromRGBO(244, 202, 90, 1);
typedef TapItem = void Function(int selectedIndex);

class RecipeDetail extends StatelessWidget {
  const RecipeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: cardBackgroundColor,
          body: SafeArea(
              child: Expanded(
                  child: Column(
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: cardBackgroundColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //aligned icon
                              GestureDetector(
                                onTap: () => {Navigator.pop(context)},
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 35,
                                  color: Colors.black54,
                                ),
                              ),

                              //right aligned icon
                              Row(
                                children: [
                                  Icon(
                                    Icons.bookmark,
                                    size: 35,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Icon(
                                    Icons.list_alt,
                                    size: 35,
                                    color: Colors.black54,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        /**
                       * Spicy dish Image goes here
                       * 
                       */

                        SizedBox(
                          height: 32,
                        ),

                        ///image
                        Container(
                            height: 350,
                            width: 400,
                            child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child:
                                  Image(image: AssetImage("recipe/dish.png")),
                            ))
                      ],
                    ),
                  )),
              Flexible(
                  flex: 4,
                  child: Container(
                    child: ClipPath(
                        clipper: TopCircularCliper(),
                        child: Container(
                          decoration: const BoxDecoration(color: bgColor),
                          child: Column(children: [
                            //Icons
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 32, top: 32, bottom: 16),
                                    child: Text(
                                      "Recipe",
                                      style: TextStyle(
                                          fontFamily: "Raleway",
                                          fontSize: 32,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2.5),
                                    )),

                                //right icon
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 32, right: 32, bottom: 16),
                                  child: Icon(
                                    Icons.list_sharp,
                                    size: 35,
                                    color: selectedColor,
                                  ),
                                )
                              ],
                            ),

                            /**
                           * 
                           * Recipe detail goes here
                           *Name, rate,health functionality
                           */
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //recipe name goes here
                                Flexible(
                                  flex: 3,
                                  child: Text(
                                    "Flank steak with citrus",
                                    maxLines: 2,
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: "Raleway",
                                        fontSize: 48,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.5),
                                  ),
                                ),

                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      //Rate value goes here
                                      Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        padding: const EdgeInsets.only(
                                            top: 32,
                                            bottom: 32,
                                            right: 16,
                                            left: 16),
                                        decoration: const BoxDecoration(
                                            color: madeRecipeColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: Text(
                                          "8.4",
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 24),
                                        ),
                                      ),
                                      Text(
                                        "Health Score",
                                        style: TextStyle(
                                            fontFamily: "Raleway",
                                            fontSize: 16,
                                            letterSpacing: 1.5),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

                            //recipe ingrident and cooking time
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: cardBackgroundColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            //ingredent image container
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(32))),
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 48,
                                                color: selectedColor,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Ingredents",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    fontSize: 24,
                                                    letterSpacing: 2.5,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  fontSize: 48,
                                                  letterSpacing: 3,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                //cooking time
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: cardBackgroundColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            //ingredent image container
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(32))),
                                              child: Icon(
                                                Icons.coffee_maker_outlined,
                                                size: 48,
                                                color: selectedColor,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Cook",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    fontSize: 24,
                                                    letterSpacing: 2.5,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "40",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  fontSize: 48,
                                                  letterSpacing: 3,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                "min",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            //wish text
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "In the realm of wholesome and vibe",
                                style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24),
                              ),
                            )
                          ]),
                        )),
                  ))
            ],
          ))),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.all(Radius.circular(64))),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 64,
            ),
          ),
        )
      ],
    );
  }
}

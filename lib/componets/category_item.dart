import 'package:flutter/material.dart';
import 'package:recipeuicl/recipe_detail.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.itemName, this.index, this.selectedIndex, this.onTap,
      {super.key});
  final String itemName;
  final int index;
  final int selectedIndex;
  final TapItem onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        height: 70,
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: selectedColor,
            //     blurRadius: 4,
            //   )
            // ],
            color: (index == selectedIndex) ? selectedColor : bgColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(
                color: selectedColor, style: BorderStyle.solid, width: 2)),
        child: Center(
          child: Text(
            itemName,
            style: TextStyle(
                fontFamily: "Raleway",
                color: (index == selectedIndex) ? Colors.white : selectedColor,
                fontSize: 18,
                fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

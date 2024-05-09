import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class MainCategoryBox extends StatelessWidget {
  final Color categoryBoxColor;
  final String CategoryName;
  const MainCategoryBox(
      {super.key, required this.categoryBoxColor, required this.CategoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: categoryBoxColor),
      child: Center(
        child: Text(
          CategoryName,
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: imageBackgroundColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.star,
            size: 30,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: submitTextColor,
          ),
        ],
      ),
    );
  }
}

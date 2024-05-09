import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class LandmarkCard extends StatelessWidget {
  final String imageTitle;
  final String imageContent;
  final String imagePath;
  const LandmarkCard(
      {super.key,
      required this.imageTitle,
      required this.imageContent,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              imageTitle,
              style: TextStyle(
                  fontSize: 20,
                  color: subFourthMainTextColor,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              imageContent,
              style: TextStyle(color: firstPageTextcolor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

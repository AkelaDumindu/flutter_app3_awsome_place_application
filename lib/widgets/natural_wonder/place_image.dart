import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class PlaceImage extends StatelessWidget {
  final String imageTitle;
  final String imageContent;
  final String imagePath;
  final bool isBorderRounded;
  final Color topicColor;
  final double opacityValue;
  const PlaceImage(
      {super.key,
      required this.imageTitle,
      required this.imageContent,
      required this.imagePath,
      required this.isBorderRounded,
      required this.topicColor,
      required this.opacityValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          imageTitle,
          style: TextStyle(
              fontSize: 20,
              color: topicColor.withOpacity(opacityValue),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        isBorderRounded
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        const SizedBox(
          height: 20,
        ),
        Text(
          imageContent,
          style: TextStyle(color: firstPageTextcolor, fontSize: 16),
        ),
      ],
    );
  }
}

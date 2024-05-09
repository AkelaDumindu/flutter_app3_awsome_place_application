import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';
import 'package:flutter_awesome_place_app/widgets/natural_wonder/place_image.dart';

class NaturalWonderPage extends StatelessWidget {
  const NaturalWonderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: const Text(
          "Natural Wonders",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: secondMainTextColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: firstPageTextcolor, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const PlaceImage(
                imageTitle: "Nature Wonders Place-1",
                imageContent:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "nature2.png",
                isBorderRounded: false,
                topicColor: secondMainTextColor,
                opacityValue: 0.53,
              ),
              const SizedBox(
                height: 30,
              ),
              const PlaceImage(
                imageTitle: "Nature Wonders Place-2",
                imageContent:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "nature1.png",
                isBorderRounded: false,
                topicColor: secondMainTextColor,
                opacityValue: 0.53,
              ),
              const SizedBox(
                height: 30,
              ),
              const PlaceImage(
                imageTitle: "Nature Wonders Place-3",
                imageContent:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "nature3.png",
                isBorderRounded: false,
                topicColor: secondMainTextColor,
                opacityValue: 0.53,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

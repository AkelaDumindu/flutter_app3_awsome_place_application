import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';
import 'package:flutter_awesome_place_app/widgets/landmark/landmark_card.dart';

class LandamrkPage extends StatelessWidget {
  const LandamrkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: fourthMainTextColor,
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
              const LandmarkCard(
                  imageTitle: "Landmarks Place-1",
                  imageContent:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imagePath: "land1.png"),
              const SizedBox(
                height: 20,
              ),
              const LandmarkCard(
                  imageTitle: "Landmarks Place-2",
                  imageContent:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imagePath: "land2.png"),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

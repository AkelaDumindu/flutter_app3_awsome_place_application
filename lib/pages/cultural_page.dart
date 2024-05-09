import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_awesome_place_app/shared/button.dart';
import 'package:flutter_awesome_place_app/shared/input_field.dart';
import 'package:flutter_awesome_place_app/shared/rating.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: fifthMainTextColor,
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
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "Cultural.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(fontSize: 16, color: firstPageTextcolor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Rate this Place",
                  style: TextStyle(fontSize: 22, color: thirdMainTextColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Rating(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(fontSize: 16, color: firstPageTextcolor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Send Feedback",
                  style: TextStyle(fontSize: 22, color: thirdMainTextColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputFieldBox(),
              const SizedBox(
                height: 20,
              ),
              const PagesButton(
                  buttonColor: starColor, buttonContent: "submit"),
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

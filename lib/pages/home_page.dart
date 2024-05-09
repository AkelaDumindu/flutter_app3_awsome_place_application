import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_awesome_place_app/pages/cultural_page.dart';
import 'package:flutter_awesome_place_app/pages/landmarks_page.dart';
import 'package:flutter_awesome_place_app/pages/natural_wonders_page.dart';
import 'package:flutter_awesome_place_app/pages/nightlife_page.dart';
import 'package:flutter_awesome_place_app/pages/vehicle_page.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';
import 'package:flutter_awesome_place_app/widgets/main_category_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style:
                              TextStyle(color: awesomeTextColor, fontSize: 20),
                        ),
                        Text(
                          "Places",
                          style: TextStyle(
                              color: mainTextColor,
                              fontSize: 48,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: mainTextColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(fontSize: 18, color: firstPageTextcolor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Image.asset(
                  "main.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                      color: mainTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const MainCategoryBox(
                          categoryBoxColor: categoryColor1,
                          CategoryName: "Natural Wonders"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWonderPage(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const MainCategoryBox(
                          categoryBoxColor: categoryColor1,
                          CategoryName: "Nightlife"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightlifePage(),
                          ),
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const MainCategoryBox(
                          categoryBoxColor: categoryColor2,
                          CategoryName: "Landmarks"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandamrkPage(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const MainCategoryBox(
                          categoryBoxColor: categoryColor2,
                          CategoryName: "Cultural"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CulturalPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: categoryColor3),
                    child: Center(
                      child: Text(
                        "Book For A Ride Today!",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: firstPageTextcolor,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VehiclePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

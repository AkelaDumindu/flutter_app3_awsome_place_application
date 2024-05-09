import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/shared/button.dart';
import 'package:flutter_awesome_place_app/shared/rating.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';
import 'package:flutter_awesome_place_app/widgets/vehicle/input_data.dart';
import 'package:flutter_awesome_place_app/widgets/vehicle/vehicleImage.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lets Book A Tour!",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: sixthMainTextColor,
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
              const Text(
                "Select a vehical",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: sixthMainTextColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VehicleImage(
                      vehicleName: "Car", vehicleImage: "Maskgroup.png"),
                  VehicleImage(
                      vehicleName: "Bicycle", vehicleImage: "Maskgroup1.png"),
                  VehicleImage(
                      vehicleName: "Bus", vehicleImage: "Maskgroup2.png"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "Cultural.png",
                      width: double.infinity,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0XFF000000).withOpacity(0.56),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Place",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Rating()
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select a vehical",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: sixthMainTextColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputDataVehicle(
                  inputName: "User Name",
                  placeholderName: "Enter Your User Name"),
              const SizedBox(
                height: 20,
              ),
              const InputDataVehicle(
                  inputName: "Country",
                  placeholderName: "Enter Your User Name"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Team Size",
                style: TextStyle(
                  fontSize: 18,
                  color: awesomeTextColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: mainTextColor,
                        ),
                        child: const Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 56,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Add or Remove team members",
                              style: TextStyle(
                                  fontSize: 18, color: awesomeTextColor)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PagesButton(
                                  buttonColor: addbutton,
                                  buttonContent: "Add  +"),
                              const SizedBox(
                                width: 30,
                              ),
                              PagesButton(
                                  buttonColor: removebutton,
                                  buttonContent: "Remove  -"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                height: 3,
                color: Colors.black.withOpacity(0.15),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: firstPageTextcolor, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              const PagesButton(
                  buttonColor: categoryColor3, buttonContent: "submit"),
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

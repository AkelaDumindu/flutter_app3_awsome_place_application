import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class VehicleImage extends StatelessWidget {
  final String vehicleName;
  final String vehicleImage;
  const VehicleImage(
      {super.key, required this.vehicleName, required this.vehicleImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                vehicleImage,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              )),
          Text(
            vehicleName,
            style: TextStyle(fontSize: 18, color: vehicleNameColor),
          )
        ],
      ),
    );
  }
}

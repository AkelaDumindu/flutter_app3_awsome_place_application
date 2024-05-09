import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class InputDataVehicle extends StatelessWidget {
  final String inputName;
  final String placeholderName;
  const InputDataVehicle(
      {super.key, required this.inputName, required this.placeholderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputName,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 18,
            color: awesomeTextColor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: placeholderName,
              labelStyle: TextStyle(color: placeholderTextColor),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        )
      ],
    );
  }
}

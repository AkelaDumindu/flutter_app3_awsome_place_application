import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/utills/colors.dart';

class PagesButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonContent;

  const PagesButton(
      {super.key, required this.buttonColor, required this.buttonContent});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                // ignore: prefer_const_constructors
                side: BorderSide(
                  width: 1,
                  color: submitTextColor,
                )),
          ),
          child: Text(
            buttonContent,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class InputFieldBox extends StatelessWidget {
  const InputFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter text',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }
}

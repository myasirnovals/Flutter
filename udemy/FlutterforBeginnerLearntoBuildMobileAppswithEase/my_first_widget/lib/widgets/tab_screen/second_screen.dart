import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          "I am tab 2 content",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

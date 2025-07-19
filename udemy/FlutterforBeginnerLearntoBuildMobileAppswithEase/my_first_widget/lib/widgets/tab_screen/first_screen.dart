import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          "I am tab 1 content",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

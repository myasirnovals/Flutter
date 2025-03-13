import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          "Second Screen",
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}

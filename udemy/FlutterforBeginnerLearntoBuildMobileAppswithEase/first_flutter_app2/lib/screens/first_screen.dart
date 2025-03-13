import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          generateRandomNumber(),
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}

String generateRandomNumber() {
  var random = Random();
  int randomNumber = random.nextInt(50);

  return "Your Random Number is ${randomNumber}";
}

import 'package:first_flutter_app2/screens/first_screen.dart';
import 'package:first_flutter_app2/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My First App"),
        ),
        body: FirstScreen(),
      ),
    );
  }
}

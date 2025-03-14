import 'package:flutter/material.dart';
import 'package:my_first_widget/widgets/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerWidget(),
    );
  }
}

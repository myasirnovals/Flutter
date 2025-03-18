import 'package:flutter/material.dart';
import 'package:my_first_widget/widgets/column_widget.dart';
import 'package:my_first_widget/widgets/container_widget.dart';
import 'package:my_first_widget/widgets/elevated_button_widget.dart';
import 'package:my_first_widget/widgets/row_widget.dart';
import 'package:my_first_widget/widgets/scaffold_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ElevatedButtonWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_first_widget/widgets/column_widget.dart';
import 'package:my_first_widget/widgets/container_widget.dart';
import 'package:my_first_widget/widgets/drawer_screen/screen_one.dart';
import 'package:my_first_widget/widgets/drawer_screen/screen_three.dart';
import 'package:my_first_widget/widgets/drawer_screen/screen_two.dart';
import 'package:my_first_widget/widgets/drawer_widget.dart';
import 'package:my_first_widget/widgets/elevated_button_widget.dart';
import 'package:my_first_widget/widgets/floating_action_button_widget.dart';
import 'package:my_first_widget/widgets/icon_button_widget.dart';
import 'package:my_first_widget/widgets/icon_widget.dart';
import 'package:my_first_widget/widgets/image_widget.dart';
import 'package:my_first_widget/widgets/list_widget.dart';
import 'package:my_first_widget/widgets/outline_button_widget.dart';
import 'package:my_first_widget/widgets/row_widget.dart';
import 'package:my_first_widget/widgets/scaffold_widget.dart';
import 'package:my_first_widget/widgets/snackbar_widget.dart';
import 'package:my_first_widget/widgets/tab_screen/first_screen.dart';
import 'package:my_first_widget/widgets/tab_screen/second_screen.dart';
import 'package:my_first_widget/widgets/tab_screen/third_screen.dart';
import 'package:my_first_widget/widgets/tabbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerWidget(),
      initialRoute: 'home',
      routes: {
        'home': (context) => DrawerWidget(),
        'fs': (context) => ScreenOne(),
        'ss': (context) => ScreenTwo(),
        'ts': (context) => ScreenThree(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.indigo,
      child: Text(
        "I am Container",
        style: TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w200),
      ),
      margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      padding: EdgeInsets.all(20.0),
    );
  }
}

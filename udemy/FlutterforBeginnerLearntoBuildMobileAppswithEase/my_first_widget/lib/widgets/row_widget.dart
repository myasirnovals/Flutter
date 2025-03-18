import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Text 1",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
          Expanded(
            child: Text(
              "Text 2",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
          Expanded(
            child: Text(
              "Text 3",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.red,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.orange,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.yellow,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.green,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.lightBlueAccent,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.blue,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.purple,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.indigo,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.black,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

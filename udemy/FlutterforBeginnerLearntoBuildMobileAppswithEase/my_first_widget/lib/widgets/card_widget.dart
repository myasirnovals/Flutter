import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Card Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 150.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.indigoAccent,
            elevation: 10.0,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.ac_unit,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Derek Westbrook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text(
                    "I am software engineer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Save"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Reset"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Account Icon"),
              subtitle: Text("This is account icon description"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_sharp),
              title: Text("Account Icon"),
              subtitle: Text("This is account icon description"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account Icon"),
              subtitle: Text("This is account icon description"),
              trailing: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}

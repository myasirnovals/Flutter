import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Drawer Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Derek Westbrook'),
              accountEmail: Text('derek@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Screen 1"),
              onTap: () {
                Navigator.pushNamed(context, 'fs');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Screen 2"),
              onTap: () {
                Navigator.pushNamed(context, 'ss');
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("Screen 3"),
              onTap: () {
                Navigator.pushNamed(context, 'ts');
              },
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("Screen 4"),
              onTap: () {},
            ),
            Divider(
              height: 30.0,
              thickness: 3.0,
              indent: 10.0,
              color: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logut"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

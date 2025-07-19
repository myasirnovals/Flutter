import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Snackbar Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Account Icon"),
              subtitle: Text("This is account icon description"),
              trailing: Icon(Icons.delete),
              onTap: () {
                showSnackBar(context, "1");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_sharp),
              title: Text("Account Icon"),
              subtitle: Text("This is account icon description"),
              trailing: Icon(Icons.delete),
              onTap: () {
                showSnackBar(context, "2");
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account Icon"),
              subtitle: Text("This is account icon description"),
              trailing: Icon(Icons.delete),
              onTap: () {
                showSnackBar(context, "3");
              },
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String item) {
    var snackBar = SnackBar(
      content: Text("You have just tapped $item"),
      action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            print("I have just undo the last operation");
          }),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

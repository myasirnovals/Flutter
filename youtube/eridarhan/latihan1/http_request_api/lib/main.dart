import 'package:flutter/material.dart';
import 'package:http_request_api/post_result_model.dart';
import 'package:http_request_api/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data"),
              MaterialButton(
                onPressed: () {
                  User.connectToAPI("3").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool initialValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Checkbox Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text("Checkbox label"),
            Checkbox(
              value: this.initialValue,
              onChanged: (value) {
                setState(() {
                  this.initialValue = value!;
                });
              },
              checkColor: Colors.white,
              activeColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

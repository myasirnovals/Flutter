import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

enum fruits { banana, apple, orange }

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  fruits _fruit = fruits.banana;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Radio Button Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text("Banana"),
              leading: Radio(
                  value: fruits.banana,
                  groupValue: _fruit,
                  onChanged: (value) {
                    setState(() {
                      _fruit = value!;
                    });
                  }),
            ),
            ListTile(
              title: Text("Apple"),
              leading: Radio(
                  value: fruits.apple,
                  groupValue: _fruit,
                  onChanged: (value) {
                    setState(() {
                      _fruit = value!;
                    });
                  }),
            ),
            ListTile(
              title: Text("Orange"),
              leading: Radio(
                  value: fruits.orange,
                  groupValue: _fruit,
                  onChanged: (value) {
                    setState(() {
                      _fruit = value!;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

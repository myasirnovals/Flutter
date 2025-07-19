import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;
  var textValue = "Switch is off";

  void toggleSwitch(value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = "Switch is On";
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = "Switch is off";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Switch Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Switch(
              value: isSwitched,
              onChanged: toggleSwitch,
              activeColor: Colors.blueAccent,
              activeTrackColor: Colors.yellowAccent,
              inactiveThumbColor: Colors.redAccent,
              inactiveTrackColor: Colors.orangeAccent,
            ),
            Text("$textValue"),
          ],
        ),
      ),
    );
  }
}

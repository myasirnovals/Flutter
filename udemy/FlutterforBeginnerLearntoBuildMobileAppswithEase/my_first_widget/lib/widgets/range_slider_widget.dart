import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  double _value = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Range Slider Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Row(
          children: [
            Icon(
              Icons.volume_up,
              size: 45,
            ),
            Expanded(
              child: Slider(
                min: 1.0,
                max: 20.0,
                divisions: 10,
                value: _value.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _value = value.toDouble();
                  });
                },
                activeColor: Colors.greenAccent,
                inactiveColor: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

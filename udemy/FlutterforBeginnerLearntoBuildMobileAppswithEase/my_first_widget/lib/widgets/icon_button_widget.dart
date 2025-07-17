import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({super.key});

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  double _speakerVol = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Icon Button Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (_speakerVol < 100) {
                      _speakerVol += 10;
                    }
                  });
                },
                icon: Icon(Icons.volume_up),
                iconSize: 75,
                color: Colors.lightBlue,
                tooltip: "Increase volume by 10",
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (_speakerVol > 0 ) {
                      _speakerVol -= 10;
                    }
                  });
                },
                icon: Icon(Icons.volume_down),
                iconSize: 75,
                color: Colors.lightBlue,
                tooltip: "Increase volume by 10",
              ),
              Text(
                "Speaker Volume $_speakerVol",
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

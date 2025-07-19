import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatefulWidget {
  const OutlineButtonWidget({super.key});

  @override
  State<OutlineButtonWidget> createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
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
              OutlinedButton(
                onPressed: () {
                  if (_speakerVol < 100) {
                    _speakerVol += 10;
                  }
                },
                child: Text("Volume Up", style: TextStyle(color: Colors.white),),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  if (_speakerVol > 0) {
                    _speakerVol -= 10;
                  }
                },
                child: Text("Volume Down", style: TextStyle(color: Colors.white),),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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

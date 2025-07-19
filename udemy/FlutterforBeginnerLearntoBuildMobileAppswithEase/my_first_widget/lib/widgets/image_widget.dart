import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Images"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'assets/images/anime.jpg',
              height: 300.0,
              width: 300.0,
            ),
            Image.network(
              'https://picsum.photos/id/18/367/267',
              height: 300.0,
              width: 300.0,
            ),
            Text(
                "First one is asset image and second is network image. Hope you like it")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _pageTitle(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }
}

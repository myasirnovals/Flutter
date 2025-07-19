import 'package:flutter/material.dart';
import 'package:my_first_widget/widgets/tab_screen/first_screen.dart';
import 'package:my_first_widget/widgets/tab_screen/second_screen.dart';
import 'package:my_first_widget/widgets/tab_screen/third_screen.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Tabbar Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            child: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.account_balance,
              color: Colors.white,
            ),
            child: Text(
              "Bank Account",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            child: Text(
              "User",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
      body: TabBarView(children: [
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
      ]),
    );
  }
}

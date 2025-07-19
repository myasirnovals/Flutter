import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currencies = ["Dollar", "Rupees", "Pound"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(
          "Interest Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Image.asset(
            "assets/images/finance-icon.png",
            width: 300.0,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Principle Amount",
                hintText: "Enter a principal amount e.g 15000",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Rate of Interest",
                hintText: "Enter in percentage e.g 15",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Term",
                      hintText: "Term in Years e.g 10",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: DropdownButton(
                  items: _currencies.map((value) {
                    return DropdownMenuItem(child: Text(value), value: value);
                  }).toList(),
                  onChanged: (newSelectedValue) {},
                  value: "Dollar",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "calculate",
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text("Result: "),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _formKey = GlobalKey<FormState>();

  var _currencies = ["Dollar", "Rupiah", "Pound"];
  var _currentSelectedItem = "Rupiah";
  var displayResult = "";

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

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
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Image.asset(
              "assets/images/finance-icon.png",
              width: 300.0,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: principalController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a principal amount";
                }
                return null;
              },
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
            TextFormField(
              keyboardType: TextInputType.number,
              controller: roiController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a Rate of Interest";
                }
                return null;
              },
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
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: termController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a Term";
                      }
                      return null;
                    },
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
                    onChanged: (newSelectedValue) {
                      setState(() {
                        this._currentSelectedItem = newSelectedValue!;
                      });
                    },
                    value: _currentSelectedItem,
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
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState?.validate() ?? false) {
                        this.displayResult = calculateInterest();
                      }
                    });
                  },
                  child: Text(
                    "calculate",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      resetFields();
                    });
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.redAccent,
                    side: BorderSide(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(displayResult),
            ),
          ],
        ),
      ),
    );
  }

  String calculateInterest() {
    double? principal = double.tryParse(principalController.text);
    double? roi = double.tryParse(roiController.text);
    double? term = double.tryParse(termController.text);

    if (principal == null || roi == null || term == null) {
      return "Please enter valid numbers in all fields.";
    }

    double rateInDecimal = roi / 100;
    double totalPayable = principal + (principal * rateInDecimal * term);

    String result =
        "After $term years, your invesment will be worth of ${totalPayable.toStringAsFixed(2)} in $_currentSelectedItem";

    return result;
  }

  void resetFields() {
    principalController.text = "";
    roiController.text = "";
    termController.text = "";

    _currentSelectedItem = _currencies[1];
    displayResult = "";
  }
}

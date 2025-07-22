import 'package:flutter/material.dart';
import 'package:user_management_app/models/User.dart';
import 'package:user_management_app/services/userService.dart';

class EditUser extends StatefulWidget {
  final User user;

  const EditUser({super.key, required this.user});

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  var _userService = UserService();
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameController.text = widget.user.name ?? "";
    contactController.text = widget.user.contact ?? "";
    descriptionController.text = widget.user.description ?? "";

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit User Data",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please don't blank your name";
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Name",
                  labelText: "Name",
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: contactController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please don't blank your contact";
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Contact",
                  labelText: "Contact",
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: descriptionController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please don't blank your description";
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Description",
                  labelText: "Description",
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          updateData();
                        }
                      });
                    },
                    child: Text("Update"),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nameController.text = widget.user.name ?? "";
                        contactController.text = widget.user.contact ?? "";
                        descriptionController.text =
                            widget.user.description ?? "";
                      });
                    },
                    child: Text("Reset"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future updateData() async {
    var _user = User();

    _user.id = widget.user.id;
    _user.name = nameController.text;
    _user.contact = contactController.text;
    _user.description = descriptionController.text;

    var result = await _userService.updateUser(_user);
    Navigator.pop(context, result);

    print("User updated!");
  }
}

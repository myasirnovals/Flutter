import 'package:flutter/material.dart';
import 'package:user_management_app/models/User.dart';
import 'package:user_management_app/screens/add_user.dart';
import 'package:user_management_app/screens/edit_user.dart';
import 'package:user_management_app/screens/view_user.dart';
import 'package:user_management_app/services/userService.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<User> _userList = <User>[];

  final _userService = UserService();

  getAllUsers() async {
    var users = await _userService.readAllUsersData();

    _userList = <User>[];

    users.forEach((user) {
      setState(() {
        var userModel = User();

        userModel.id = user['id'];
        userModel.name = user['name'];
        userModel.contact = user['contact'];
        userModel.description = user['description'];

        _userList.add(userModel);
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getAllUsers();
    super.initState();
  }

  _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  _deleteDataDialog(BuildContext context, userId) {
    return showDialog(
        context: context,
        builder: (params) {
          return AlertDialog(
            title: Text("Are you sure to delete it?"),
            actions: [
              ElevatedButton(
                onPressed: () async {
                  var result = await _userService.deleteUser(userId);
                  setState(() {
                    if (result != null) {
                      Navigator.pop(context);
                      getAllUsers();
                      _showSnackBar("Usre has been deleted!");
                    }
                  });
                },
                child: Text("Delete"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SQLite CRUD App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: _userList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ViewUser(user: _userList[index])));
              },
              leading: Icon(Icons.person),
              title: Text(_userList[index].name ?? ''),
              subtitle: Text(_userList[index].contact ?? ''),
              trailing: SizedBox(
                width: 150.0,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (context) =>
                                      EditUser(user: _userList[index])))
                              .then((data) {
                            if (data != null) {
                              getAllUsers();
                              _showSnackBar("User has been updated!");
                            }
                          });
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          _deleteDataDialog(context, _userList[index].id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddUser()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

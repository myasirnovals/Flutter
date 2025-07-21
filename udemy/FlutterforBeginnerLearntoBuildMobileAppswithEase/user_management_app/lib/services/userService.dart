import 'dart:async';
import 'package:user_management_app/db_helper/repository.dart';
import 'package:user_management_app/models/User.dart';

class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  // Save User
  saveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

  // Read All User Records
  readAllUsersData() async {
    return await _repository.readData('users');
  }

  // Edit User
  updateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  // Delete User
  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}

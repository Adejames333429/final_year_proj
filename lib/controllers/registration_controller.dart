import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oau_bike_service/repository/authentication_repository.dart';

class RegistrationController extends GetxController {
  static RegistrationController get instance => Get.find();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _statusInTheUniversityController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();


  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneNoController.dispose();
    _statusInTheUniversityController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void registerUser(String firstName, String lastName,
      String username, String email,
      String phoneNo, String statusInTheUniversity,
      String password, String confirmPassword) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(
        email, password);
  }
}


import 'dart:convert';

class UserModels {
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? statusInTheUniversity;

UserModels();

  UserModels.fromJson(Map<String, dynamic> json) {
    firstName = json['first name'];
    lastName = json['last name'];
    username = json['username'];
    email = json['email'];
    statusInTheUniversity = json['status in the university'];
      }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:oau_bike_service/animated_onboarding_screen.dart';
import 'package:oau_bike_service/models/user_models.dart';

class CustomersProfile extends StatefulWidget {
  const CustomersProfile({super.key});

  @override
  State<CustomersProfile> createState() => _CustomersProfileState();
}

class _CustomersProfileState extends State<CustomersProfile> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _usernameController = TextEditingController();
  final _statusInTheUniversityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: Text('My Profile',
        style: TextStyle(
          fontFamily: 'Momo',
          fontSize: 30,
          color: Colors.white,
        ),
        ),
        actions: [ 
          Image.asset(
            'images/oau_logo.jpg',
              width: 30,
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 120.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
                    SizedBox(height: 10.0),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2)
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _firstNameController,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              keyboardType: TextInputType.text,
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.keyboard_arrow_right, size: 15),
                                hintText:'Enter your firstname',
                                hintStyle: TextStyle(fontSize: 12),
                                suffixText: '(required)',
                                suffixStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,  // Removes default border
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),  // Lighter color on focus
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),  // Apply borderRadius here
                                  borderSide: BorderSide(
                                    color: Colors.grey,  // Default border color
                                    width: 1,
                                  ),
                                ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2)
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _lastNameController,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              keyboardType: TextInputType.text,
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.keyboard_arrow_right, size: 15),
                                hintText:'Enter your lastname',
                                hintStyle: TextStyle(fontSize: 12),
                                suffixText: '(required)',
                                suffixStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,  // Removes default border
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),  // Lighter color on focus
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),  // Apply borderRadius here
                                  borderSide: BorderSide(
                                    color: Colors.grey,  // Default border color
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2)
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _usernameController,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              keyboardType: TextInputType.text,
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.person, size: 15),
                                hintText:'Enter your username',
                                hintStyle: TextStyle(fontSize: 12),
                                suffixText: '(required)',
                                suffixStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,  // Removes default border
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),  // Lighter color on focus
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),  // Apply borderRadius here
                                  borderSide: BorderSide(
                                    color: Colors.grey,  // Default border color
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2)
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _emailController,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              keyboardType: TextInputType.text,
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.email, size: 15),
                                hintText:'Enter your email address',
                                hintStyle: TextStyle(fontSize: 12),
                                suffixText: '(required)',
                                suffixStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,  // Removes default border
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),  // Lighter color on focus
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),  // Apply borderRadius here
                                  borderSide: BorderSide(
                                    color: Colors.grey,  // Default border color
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2)
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _phoneNoController,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              keyboardType: TextInputType.phone,
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.phone, size: 15),
                                hintText:'Enter your phone number',
                                hintStyle: TextStyle(fontSize: 12),
                                suffixText: '(required)',
                                suffixStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,  // Removes default border
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),  // Lighter color on focus
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),  // Apply borderRadius here
                                  borderSide: BorderSide(
                                    color: Colors.grey,  // Default border color
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Form(
                          child: Column(
                            children: [
                              SizedBox(
                                width: 350,
                                child: DropdownButtonFormField (
                                  onChanged: (value) {
                                    
                                  },
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.account_box,
                                         size: 15,
                                        ),
                                      labelText: 'Status in the University',
                                      labelStyle: TextStyle(
                                        fontSize: 12,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide.none,
                                      ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.8),  // Lighter color on focus
                                            width: 2,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),  // Apply borderRadius here
                                          borderSide: BorderSide(
                                            color: Colors.grey,  // Default border color
                                            width: 1,
                                          ),
                                        ),
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                      ),
                                  items: <String>['Customer', 'Service Provider']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
            )))));
  }
}
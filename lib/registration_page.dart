import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:oau_bike_service/login_page.dart';
import 'home.dart';
import 'controllers/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatefulWidget {
   RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}
class _RegistrationPageState extends State<RegistrationPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _usernameController = TextEditingController();
  final _statusInTheUniversityController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNoController.dispose();
    _usernameController.dispose();
    _statusInTheUniversityController.dispose();
    super.dispose();
  }

  String? _selectedValue;
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      if(index == 0) {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
          return Home();
        }));
      } else if (index == 1) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        foregroundColor: Colors.white,
        title: const Text('OAU Bike Service',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'Momo',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 120.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow (
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ), ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Momo'
                            ),
                          ),
                          SizedBox(width: 200),
                          Image.asset('images/oau_logo.jpg',
                            width: 30,
                          ),
                        ],
                      ),
                      SizedBox(height:5),
                      Text('Register an account to access our services.'),
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
                                    value: _selectedValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selectedValue = newValue;
                                      });
                                    },
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
                                controller: _passwordController,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration:  InputDecoration(
                                  prefixIcon: Icon(Icons.key, size: 15),
                                  hintText:'Enter your password',
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
                                controller: _confirmPasswordController,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration:  InputDecoration(
                                  prefixIcon: Icon(Icons.key, size: 15),
                                  hintText:'Confirm your password (Re-type)',
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
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: TextButton(onPressed: () {
                            if (_formKey.currentState!.validate())
                            controller.registerUser(
                                _firstNameController.text.trim(),
                                _lastNameController.text.trim(),
                                _usernameController.text.trim(),
                                _emailController.text.trim(),
                                _phoneNoController.text.trim(),
                                _statusInTheUniversityController.text.trim(),
                                _passwordController.text.trim(),
                                _confirmPasswordController.text.trim(),
                            ); 
                              Future addUsersDetails(
                            String firstName, String lastName, String username, String email, int phoneNo, String statusInTheUniversity) async {
                            await FirebaseFirestore.instance.collection('users').add({
                              'first name': firstName,
                              'last name': lastName,
                              'username': username,
                              'email': email,
                              'phone number': phoneNo ,
                              'status in the university': statusInTheUniversity,
                            });
                          };
                            addUsersDetails(
                              _firstNameController.text.trim(),
                              _lastNameController.text.trim(),
                              _usernameController.text.trim(),
                              _emailController.text.trim(),
                              int.parse(_phoneNoController.text.trim()),
                              _statusInTheUniversityController.text.trim(),
                            );
                          },
                       
                          child: Text('Register',
                            style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                            ),
                          ),
                          // child: TextButton()"Register",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 15,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        children: [
                           Text('Already have an account?',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 12,
                                ),
                              ),
                          SizedBox(width: 1),
                          TextButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                              return LoginPage();
                            }),
                            );
                          },
                              child: Text('Sign in',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13,
                                ),
                              )),
                  
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bike_scooter,
              color: Colors.blueGrey[900],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support,
              color: Colors.blueGrey[900],
            ),
            label: 'Support',
          ),
        ],
        currentIndex: currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

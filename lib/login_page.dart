import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oau_bike_service/home.dart';
import 'package:oau_bike_service/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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


  final _formfield = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
        title: const Text('OAU Bike Service',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          fontFamily: 'Momo'
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 170.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [BoxShadow (
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'Momo'
                        ),
                        ),
                        SizedBox(width: 210),
                        Image.asset('images/oau_logo.jpg',
                        width: 30,
                        ),
                      ],
                    ),
                    SizedBox(height:5),
                    Text('Login to your account to access services.',),
                    SizedBox(height: 20.0),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        )],
                      ),// Adjust width as needed
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
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
                    SizedBox(height: 20),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        )],
                      ),// Adjust width as needed
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.password, size: 15),
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
                    SizedBox(height: 18.0),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey[700],
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 18.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                          onPressed: () {},
                          child: Text('Login',
                          style: TextStyle(
                            fontFamily: 'Momo',
                          ),
                          )),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      children: [
                        TextButton(onPressed: () {},
                            child: Text('Forgot Password?',
                            style: TextStyle(
                              color: Colors.blueGrey,
                            ),
                            )),
                        SizedBox(width: 50),
                        TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return RegistrationPage();
                          }));
                        },
                            child: Text('Create Account',
                              style: TextStyle(
                                color: Colors.blueGrey,
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

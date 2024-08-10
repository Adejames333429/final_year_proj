import 'package:flutter/material.dart';
import 'package:oau_bike_service/login_page.dart';
import 'home.dart';

class RegistrationPage extends StatefulWidget {
   RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final userController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        foregroundColor: Colors.white,
        title: const Text('OAU Bike Service',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text("Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      children: [
                        TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return LoginPage();
                          }),
                          );
                        },
                            child: Text('Already have an account?')),
                        SizedBox(width: 50),
                        TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return LoginPage();
                          }),
                          );
                        },
                            child: Text('Sign in')),

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

import 'package:flutter/material.dart';
import 'package:oau_bike_service/login_page.dart';
import 'package:oau_bike_service/registration_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/oauenv.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
              child: Row(
                children: [
                  Text('OAU',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Text('BIKES',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 65.0, 5.0, 0.0),
              child: Image.asset('images/oau_logo.jpg',
                width: 90.0,
              ),
            ),
            SizedBox(height: 185.0),
            Text('Welcome to OAUBIKES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Momo',
              ),
            ),
            SizedBox(height: 80),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return LoginPage();
                        },
                      ),
                    );
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                      fixedSize: Size(300, 55),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Colors.blueGrey.withOpacity(0.7),
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Momo'
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                      return RegistrationPage();
                    }));
                  },
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0.0, 13.0, 0.0, 13.0),
                    fixedSize: Size(300, 55),
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.blueGrey.withOpacity(0.8),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Momo',
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

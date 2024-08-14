import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:oau_bike_service/login_page.dart';
import 'package:oau_bike_service/animated_onboarding_screen.dart';
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>( 
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot)  {
            // User is logged in
            if (snapshot.hasData) {
              return AnimatedOnboardingScreen(); 
            } else {
              return LoginPage();
            }  
        }
      )
    );
  }
}
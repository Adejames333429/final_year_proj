import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oau_bike_service/animated_onboarding_screen.dart';
import 'package:oau_bike_service/customers_profile.dart';
import 'package:oau_bike_service/dashboard.dart';
import 'package:oau_bike_service/place_order.dart';
import 'package:oau_bike_service/registration_page.dart';
import 'package:oau_bike_service/repository/authentication_repository.dart';
import 'controllers/registration_controller.dart';
import 'home.dart';
import 'package:get/get.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  await Firebase.initializeApp().then((value) => Get.put(AuthenticationRepository()));
  // Get.put(RegistrationController());

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlaceOrder(),
      // home: Home(),
    );
  }
}
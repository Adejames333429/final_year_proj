import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:oau_bike_service/exception/signup_email_password_failure.dart';
import 'package:oau_bike_service/animated_onboarding_screen.dart';
import '../dashboard.dart';
import '../home.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
    void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    // ever(firebaseUser, _setInitialScreen);
      }


    void _setInitialScreen(User? user) {
    user == null ? Get.offAll(() =>  Home()) : Get.offAll(() => Dashboard());
     }
     Future<void> createUserWithEmailAndPassword(
         String email,
         String password,
         )
         async {
    try {print("email is $email");
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
      ); print('jump');
      firebaseUser.value == null ? Get.offAll(() => const Home()) : Get.offAll(() => const AnimatedOnboardingScreen());
    } on FirebaseAuthException catch(e) {
      final ex = SignUpWithEmailPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXECEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
     }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
     await _auth.signInWithEmailAndPassword(email: email, password: password);
    //  print(firebaseUser.value!.email);
   firebaseUser.value == null
      ? Get.offAll(() => const Home())
          : Get.offAll(() => const AnimatedOnboardingScreen());
    } on FirebaseAuthException catch(e) {print(e);
    } catch (_) {print(_);}
  }

  Future<void>logout() async => await _auth.signOut();
    }


class SignUpWithEmailPasswordFailure {
  final String message;

  SignUpWithEmailPasswordFailure([this.message = "An unknown error occured"]);

  factory SignUpWithEmailPasswordFailure.code(String code) {
    switch(code) {
      case 'weak-password':
        return SignUpWithEmailPasswordFailure('Please enter a stronger password');
      case 'invalid-email':
        return SignUpWithEmailPasswordFailure('Email is not valid or badly formatted');
      case 'email-already-in-use':
        return SignUpWithEmailPasswordFailure('An account already existing for that email');
      case 'operation-not-allowed':
        return SignUpWithEmailPasswordFailure('Operation is not allow. Please contact support');
      case 'user-disabled':
        return SignUpWithEmailPasswordFailure('This user has been disabled. Please contact support for help.');
      default:
        return SignUpWithEmailPasswordFailure();
    }
  }
}
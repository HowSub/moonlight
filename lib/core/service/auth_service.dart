import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw 'Password is weak. Try another';

        case 'email-already-in-use':
          throw 'Email was already used';

        default:
          throw 'Something went wrong: ${e.message}';
      }
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-credential':
        case 'user-not-found':
        case 'wrong-password':
          throw 'Invalid email or password';

        case 'user-disabled':
          throw 'This account was banned';

        case 'too-many-requests':
          throw 'Too many requests. Try later';

        default:
          throw 'Something went wrong: ${e.message}';
      }
    }
  }
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch(e) {
      throw 'Something went wrong. Try later';
    }
  }
}

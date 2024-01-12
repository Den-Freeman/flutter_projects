import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  static final FirebaseAuth _instance = FirebaseAuth.instance;

  static User? get currentUser => _instance.currentUser;

  static Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _instance.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // Handle authentication error
      print(e.message);
    }
  }

  static Future<void> signOut() async {
    await _instance.signOut();
  }
}

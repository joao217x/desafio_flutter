import 'package:firebase_auth/firebase_auth.dart';

class FirebaseClient {
  final instance = FirebaseAuth.instance;

  Future<UserCredential> logInFirebase({
    required String email,
    required String password,
  }) async {
    try {
      final result = await instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return result;
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }
}

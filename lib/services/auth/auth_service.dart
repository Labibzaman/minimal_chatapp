import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailPassword(String email,
      dynamic password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future<UserCredential> signUpWithEmailPassword (String email, dynamic password) async{
    try {
      UserCredential signMeUp = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return signMeUp;
    } catch (e) {
      throw(e.toString());
    }
  }

  Future signOut() async {
    _auth.signOut();
  }
}

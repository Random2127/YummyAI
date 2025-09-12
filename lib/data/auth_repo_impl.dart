import 'package:firebase_auth/firebase_auth.dart';
import 'package:yummyai/domain/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<UserCredential> login(String email, password) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  @override
  Future<void> logout() async {
    return _auth.signOut();
  }

  @override
  Future<UserCredential> signup(String email, password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
}

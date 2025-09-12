import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<UserCredential> login(String email, password);
  Future<void> logout();
  Future<UserCredential> signup(String email, password);
}

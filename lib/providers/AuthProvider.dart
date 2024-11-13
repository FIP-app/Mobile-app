import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider extends ChangeNotifier {

  late FirebaseAuth _auth;

  FirebaseAuth get auth => _auth;

  AuthProvider() {
    _auth = FirebaseAuth.instance;
  }

  bool getIsLogged() {
    try {
      var user = _auth.currentUser;
      return user != null;
    } catch(e) {
      return false;
    }
  }

}
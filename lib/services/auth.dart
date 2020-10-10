import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebaseuser
  MyUser _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<MyUser> get user {
    return _auth.authStateChanges().map((u) => _userFromFirebaseUser(u));
  }

  // sign in anonymous
  Future signInAnonymously() async {
    try {
      UserCredential userCred = await _auth.signInAnonymously();
      User user = userCred.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pass

  // register with email and pass

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

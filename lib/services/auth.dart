import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_planner/models/user.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create User based on firebase user
  UserDto? _userFromFirebaseUser(User user) {
    return user != null ? UserDto(uid: user.uid) : null;
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // register with email and password

  // sign out
}

class AuthResult {
}
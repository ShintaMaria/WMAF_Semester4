import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userFromFirebase(User? user) {
    return user != null ? UserModel(uid: user.uid, email: user.email!) : null;
  }
  Future<UserModel?> registerWithEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(result.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  Future<UserModel?> loginWithEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(result.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  Future<void> signOut() async {
    await _auth.signOut();
  }
}

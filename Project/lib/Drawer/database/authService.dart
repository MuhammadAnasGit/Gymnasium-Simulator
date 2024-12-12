import 'package:firebase_auth/firebase_auth.dart';
import 'package:gymnasium_simulator/Drawer/database/firestore.dart';

class AuthService{

final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signIn(String email, String password) async
  {
    
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebase(user);
    
  }


  

  User_id? _userFromFirebase(User? user) {
    return user != null ? User_id(uID: user.uid) : null;
  }

  Stream<User_id?> get userID {
    return  _auth.authStateChanges().map(_userFromFirebase);
  }
  
  

}
class User_id{

final String uID;
User_id({required this.uID});
}
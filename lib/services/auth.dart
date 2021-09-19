import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  //sign in ano
  Future signInAnon() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }
  //sign with email and pass

  //register email and pass

  //signout
}
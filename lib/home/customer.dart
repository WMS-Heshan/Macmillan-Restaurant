import 'package:flutter/material.dart';
import 'package:macmillan_restaurant/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';

class CuDash extends StatefulWidget {
  @override
  _CuDashState createState() => _CuDashState();
}

class _CuDashState extends State<CuDash> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        title: Text('sign up'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('sign in anon'),
          onPressed: () async{
           dynamic result = await _auth.signInAnon();
           if (result == null){
             print('error signing in');
           } else {
             print('signed in');
             print(result);
           }
          }
        ),

      ),
    );
  }
}

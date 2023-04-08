import 'package:flutter/material.dart';
import 'txtfield.dart';
import 'button.dart';
import 'main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'constant.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showspinner = false;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2FFA5),
      body: SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: showspinner,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  style: TextStyle(
                      color: Color(0xFF758756), fontWeight: FontWeight.bold),
                  decoration: kuchkuch.copyWith(hintText: 'Email'),
                ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  style: TextStyle(
                      color: Color(0xFF758756), fontWeight: FontWeight.bold),
                  decoration: kuchkuch.copyWith(hintText: 'Password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                    child: roundbutton('SUBMIT', () async {
                  setState(() {
                    showspinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, MainScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                  setState(() {
                    showspinner = false;
                  });
                }, Colors.black, Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

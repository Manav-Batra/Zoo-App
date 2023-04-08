import 'package:flutter/material.dart';
import 'button.dart';
// import 'txtfield.dart';
import 'main_screen.dart';
import 'constant.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);
  static const String id = 'register_screen';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _auth = FirebaseAuth.instance;
  bool showspinner = false;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: showspinner,
        child: Scaffold(
          backgroundColor: Color(0xFFE2FFA5),
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    onChanged: (value) {},
                    style: TextStyle(
                        color: Color(0xFF758756), fontWeight: FontWeight.bold),
                    decoration: kuchkuch.copyWith(hintText: 'Name'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                    style: TextStyle(
                        color: Color(0xFF758756), fontWeight: FontWeight.bold),
                    decoration: kuchkuch.copyWith(hintText: 'Email'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {},
                        style: TextStyle(
                            color: Color(0xFF758756),
                            fontWeight: FontWeight.bold),
                        decoration: kuchkuch.copyWith(hintText: 'Age'),
                      )),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.text,
                        onChanged: (value) {},
                        style: TextStyle(
                            color: Color(0xFF758756),
                            fontWeight: FontWeight.bold),
                        decoration: kuchkuch.copyWith(hintText: 'Nationality'),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
                    style: TextStyle(
                        color: Color(0xFF758756), fontWeight: FontWeight.bold),
                    decoration: kuchkuch.copyWith(hintText: 'Profession'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    style: TextStyle(
                        color: Color(0xFF758756), fontWeight: FontWeight.bold),
                    decoration: kuchkuch.copyWith(hintText: 'Password'),
                  ),
                  Center(
                      child: roundbutton('SUBMIT', () async {
                    setState(() {
                      showspinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, MainScreen.id);
                        setState(() {
                          showspinner = false;
                        });
                      }
                    } catch (e) {
                      print(e);
                    }
                  }, Colors.black, Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zoo/register_screen.dart';
import 'button.dart';
import 'login_screen.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);
  static const String id = 'welcome_page';
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hero(
              //   tag: 'logo',
              //   child: Container(
              //     child: Image.asset('images/logo.jfif'),
              //     height: 20.0,
              //   ),
              // ),
              Text(
                'Welcome to',
                style: TextStyle(
                  color: Color(0xFF758756),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'kamla Nehru Prani',
                style: TextStyle(
                    color: Color(0xFF25310B),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              Text(
                'Sangrahlaya',
                style: TextStyle(
                    color: Color(0xFF25310B),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  roundbutton('Register', () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  }, Color(0xFFE4FFAB), Colors.black),
                  SizedBox(
                    width: 10.0,
                  ),
                  roundbutton('Log In', () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  }, Color(0xFFE4FFAB), Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

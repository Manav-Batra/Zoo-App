import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'register_screen.dart';
import 'login_screen.dart';
import 'main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'animal_screen.dart';
// import 'dart:ffi';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        MainScreen.id: (context) => MainScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterPage.id: (context) => RegisterPage(),
        AnimalScreen.id: (context) => AnimalScreen(),
      },
    );
  }
}

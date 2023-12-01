import 'package:flutter/material.dart';
import 'package:second_choice_new/screens/home.dart';
import 'package:second_choice_new/screens/homemain.dart';
import 'package:second_choice_new/screens/login_page.dart';
import 'package:second_choice_new/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage(),
    );
  }
}

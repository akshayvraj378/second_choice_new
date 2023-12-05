import 'package:flutter/material.dart';
import 'package:second_choice_new/screens/Log_in_page.dart';
import 'package:second_choice_new/screens/bookingpage.dart';
import 'package:second_choice_new/screens/home.dart';
import 'package:second_choice_new/screens/homemain.dart';
import 'package:second_choice_new/screens/mainpagesnavi.dart';
import 'package:second_choice_new/screens/profilepage.dart';
import 'package:second_choice_new/screens/registration%20page.dart';
import 'package:second_choice_new/screens/splash_screen.dart';
import 'package:second_choice_new/trash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: MyForm(),
    );
  }
}

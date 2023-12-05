import 'dart:async';

import 'package:flutter/material.dart';

import 'Log_in_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Loginpageui(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/rangerover.jpg'),
                  fit: BoxFit.fitHeight)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 90),
                child: CircularProgressIndicator(
                  color: Colors.white38,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
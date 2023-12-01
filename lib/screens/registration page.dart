import 'package:flutter/material.dart';

import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final loginkey = GlobalKey<FormState>();
  bool pass = false;

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: loginkey,
        child: ListView(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img2.png'))),
            height: size.height,
            width: size.width,
            child: ListView(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 290),
                  child: Container(
                    width: 350,
                    height: 320,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 20, color: Colors.black38)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: ListView(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Register',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Email',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 19, right: 19),
                              child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    if (!RegExp(
                                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                        .hasMatch(value)) {
                                      return "Enter a valid email address";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your email')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text('Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 19, right: 19),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !pass,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          pass = !pass;
                                        });
                                      },
                                      icon: Icon(pass
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    hintText: 'Enter your password'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password';
                                  }
                                  if (!RegExp(
                                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,12}$')
                                      .hasMatch(value)) {
                                    return "Enter a valid password";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text('Confirm Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 19, right: 19),
                              child: TextFormField(
                                obscureText: !pass,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          pass = !pass;
                                        });
                                      },
                                      icon: Icon(pass
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    hintText: 'Enter your password'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ]),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(150, 40)),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue)),
                          onPressed: () {
                            loginkey.currentState!.validate();
                          },
                          child: Text('Register')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                    (route) => false);
                              },
                              child: Text('Login'))
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ]),
          ),
        ]),
      ),
    );
  }
}

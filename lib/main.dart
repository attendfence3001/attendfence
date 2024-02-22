import 'package:flutter/material.dart';

import 'pages/login_page.dart';
// import 'pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => const LoginPage(),
        // "/register":(context) => RegistrationPage(),
      },
    );
  }
}

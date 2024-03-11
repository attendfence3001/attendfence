import 'package:attend_fence/pages/trials/g_login.dart';
import 'package:attend_fence/pages/trials/loginScreen.dart';
import 'package:attend_fence/pages/trials/register2.dart';
import 'package:attend_fence/pages/trials/login.dart';
import 'package:attend_fence/pages/trials/registration.dart';
import 'package:attend_fence/pages/user/user_home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'pages/user/user_login_page.dart';
import 'pages/user/user_registration_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: '/8',
      routes: {
        // "/": (context) => const UserLoginPage(),
        // "/2": (context) => const RegistrationPage(),
        "/4": (context) => const LoginApp(),
        "/5": (context) => const RegistrationForm(),
        "/6": (context) => const RegisterScreen(),
        "/7": (context) => GLoginPage(),
        // "/8": (context) => const LoginScreen(), 
      },
      home: const KeyboardVisibilityProvider(
        child: LoginScreen(),
      ),
    );
  }
}

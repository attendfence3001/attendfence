// import 'package:attend_fence/pages/user_login_page.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class HomePage extends StatefulWidget {
  final String userId;
  const HomePage({Key? key, required this.userId}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}

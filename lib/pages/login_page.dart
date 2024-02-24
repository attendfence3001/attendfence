import 'package:attend_fence/pages/registration_page.dart';
import 'package:attend_fence/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Center(
          child: const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 50,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter UID:", label: Text("UID")),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    signInUpBtn(context, true, () {}),
                    signInUpOption()
                    // Text("OR login with quick touch id"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row signInUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account? ",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegistrationPage()));
          },
          child: const Text("Sign Up",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}

import 'package:attend_fence/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

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
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
                child: Column(
                  children: [
                    reusableTextField("Enter E-mail", Icons.email, false,
                        _emailTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline,
                        true, _passwordTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Confirm Password", Icons.lock_outline,
                        true, _passwordTextController),
                    SizedBox(
                      height: 20,
                    ),
                    signInUpBtn(context, false, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                    // Padding(
                    //   padding:
                    //       const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       "Next",
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.lightBlue,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

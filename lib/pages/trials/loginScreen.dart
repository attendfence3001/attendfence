import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible =
        KeyboardVisibilityProvider.isKeyboardVisible(context);
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        isKeyboardVisible
            ? SizedBox(
                height: screenWidth / 16,
              )
            : Container(
                height: screenHeight / 3,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(70))),
                child: Center(
                    child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: screenWidth / 5,
                )),
              ),
        Container(
          margin: EdgeInsets.only(
              top: screenHeight / 15, bottom: screenHeight / 20),
          child: Text(
            "Login",
            style:
                TextStyle(fontSize: screenWidth / 18, fontFamily: "NexaBold"),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: screenWidth / 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              fieldTitle("Employee ID"),
              customfield("Enter your employee id", idController),
              Container(
                height: 60,
                width: screenWidth,
                margin: EdgeInsets.only(top: screenHeight / 40),
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontFamily: "NexaBold",
                      fontSize: screenWidth / 26,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget fieldTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(fontSize: screenWidth / 18, fontFamily: "NexaBold"),
      ),
    );
  }

  Widget customfield(
    String hint,
    TextEditingController controller,
  ) {
    return Container(
      width: screenWidth,
      margin: EdgeInsets.only(bottom: screenHeight / 50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth / 6,
            child: Icon(
              Icons.person,
              color: primary,
              size: screenWidth / 15,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 12),
              child: TextFormField(
                controller: controller,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight / 35),
                  border: InputBorder.none,
                  hintText: hint,
                ),
                maxLength: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}

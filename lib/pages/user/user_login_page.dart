// import 'package:attend_fence/pages/user/user_home_page.dart';
// import 'package:attend_fence/pages/user/user_registration_page.dart';
// import 'package:attend_fence/reusable_widgets/reusable_widget.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class UserLoginPage extends StatefulWidget {
//   const UserLoginPage({super.key});

//   @override
//   State<UserLoginPage> createState() => _UserLoginPageState();
// }

// class _UserLoginPageState extends State<UserLoginPage> {
//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         elevation: 0,
//         title: const Center(
//           child: Text(
//             "Login",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 110),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Enter UID:", label: Text("UID")),
//                   ),
//                   SizedBox(
//                     height: 50,
//                     width: 50,
//                   ),
//                   signInUpBtn(context, true, () {
//                     FirebaseAuth.instance
//                         .signInWithEmailAndPassword(
//                             email: _emailTextController.text,
//                             password: _passwordTextController.text)
//                         .then((value) {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => HomePage(userId: '',)));
//                     });
//                   }),
//                   signInUpOption()
//                   // Text("OR login with quick touch id"),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Row signInUpOption() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text("Don't have account? ",
//             style: TextStyle(color: Colors.white70)),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => RegistrationPage()));
//           },
//           child: const Text("Sign Up",
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//         )
//       ],
//     );
//   }
// }
 




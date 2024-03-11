// import 'package:attend_fence/pages/user/user_home_page.dart';
// import 'package:attend_fence/reusable_widgets/reusable_widget.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class RegistrationPage extends StatefulWidget {
//   const RegistrationPage({super.key});

//   @override
//   State<RegistrationPage> createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _cpasswordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         elevation: 0,
//         title: Center(
//           child: const Text(
//             "Sign Up",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 50,
//                 width: 20,
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
//                 child: Column(
//                   children: [
//                     reusableTextField("Enter E-mail", Icons.email, false,
//                         _emailTextController),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     reusableTextField("Enter Password", Icons.lock_outline,
//                         true, _passwordTextController),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     reusableTextField("Confirm Password", Icons.lock_outline,
//                         true, _cpasswordTextController),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     signInUpBtn(context, false, () {
//                       FirebaseAuth.instance
//                           .createUserWithEmailAndPassword(
//                         email: _emailTextController.text,
//                         password: _passwordTextController.text,
//                       )
//                           .then((value) {
//                         if (_cpasswordTextController == _passwordTextController) {
//                           print("Created New Account");
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => HomePage()));
//                         } else {
//                           print("Password doesn't match");
//                         }
//                       }).onError((error, stackTrace) {
//                         print("Error ${error.toString()}");
//                       });
//                       // } else {
//                       //   print("Password doesn't match");
//                       // }
//                     }),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

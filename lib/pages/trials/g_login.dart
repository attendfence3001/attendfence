import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:local_auth/local_auth.dart';

class GLoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<GLoginPage> {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _isFingerprintAuthSupported = false;

  @override
  void initState() {
    super.initState();
    _checkBiometricSupport();
  }

  Future<void> _checkBiometricSupport() async {
    bool isSupported = await _localAuth.isDeviceSupported();
    setState(() {
      _isFingerprintAuthSupported = isSupported;
    });
  }

  Future<void> _authenticate() async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await _localAuth.authenticate(
        localizedReason: 'Authenticate to login',
        options: const AuthenticationOptions(
            useErrorDialogs: true, stickyAuth: true, biometricOnly: true),
      );
    } catch (e) {
      print('Fingerprint authentication error: $e');
    }

    if (isAuthenticated) {
      // Retrieve user's UID from Firestore based on email or any other unique identifier
      String userId =
          ''; // Get user's UID from Firestore based on email or any other unique identifier
      if (userId.isNotEmpty) {
        // Navigate to homepage with user ID
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage(userId: userId)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('User not found'),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Fingerprint authentication failed'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fingerprint Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login with Fingerprint',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            _isFingerprintAuthSupported
                ? ElevatedButton(
                    onPressed: _authenticate,
                    child: Text('Authenticate'),
                  )
                : Text('Fingerprint authentication not supported'),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String userId;

  const HomePage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome! Your User ID is: $userId'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Logout
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

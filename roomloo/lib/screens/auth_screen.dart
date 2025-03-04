// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();
  bool isLogin = true;
  bool isPhoneAuth = false;
  String verificationId = '';

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isPhoneAuth) ...[
              Text(isLogin ? "Login" : "Sign Up", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(controller: _emailController, decoration: InputDecoration(labelText: "Email")),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(labelText: "Password")),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (isLogin) {
                    await authProvider.loginWithEmail(_emailController.text, _passwordController.text);
                  } else {
                    await authProvider.signUpWithEmail(_emailController.text, _passwordController.text);
                  }
                  if (authProvider.user != null) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                  }
                },
                child: Text(isLogin ? "Login" : "Sign Up"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await authProvider.signInWithGoogle();
                  if (authProvider.user != null) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                  }
                },
                child: Text("Sign in with Google"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text(isLogin ? "Create an account" : "Already have an account? Login"),
              ),
            ] else ...[
              Text("Phone Authentication", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(controller: _phoneController, decoration: InputDecoration(labelText: "Phone Number")),
              ),
              ElevatedButton(
                onPressed: () async {
                  await authProvider.verifyPhoneNumber(_phoneController.text, (verId, token) {
                    setState(() {
                      verificationId = verId;
                    });
                  });
                },
                child: Text("Send OTP"),
              ),
              if (verificationId.isNotEmpty) ...[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(controller: _otpController, decoration: InputDecoration(labelText: "OTP")),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await authProvider.signInWithOTP(verificationId, _otpController.text);
                    if (authProvider.user != null) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                    }
                  },
                  child: Text("Verify OTP"),
                ),
              ],
            ],
            TextButton(
              onPressed: () {
                setState(() {
                  isPhoneAuth = !isPhoneAuth;
                });
              },
              child: Text(isPhoneAuth ? "Use Email/Password" : "Use Phone Authentication"),
            ),
          ],
        ),
      ),
    );
  }
}

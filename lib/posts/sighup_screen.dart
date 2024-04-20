import 'package:flutter/material.dart';
import 'package:flutter_firebase_series/tools/ui_helper.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController emailController = TextEditingController();
TextEditingController pass1Controller = TextEditingController();
TextEditingController pass2Controller = TextEditingController();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'SignUp Account',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          UiHelper.CustomTextField(emailController, false, 'Email'),
          UiHelper.CustomTextField(pass1Controller, true, '*******'),
          UiHelper.CustomTextField(pass2Controller, true, '*******'),
          UiHelper.buildButton(() {}, "SignUp")
        ],
      ),
    );
  }
}

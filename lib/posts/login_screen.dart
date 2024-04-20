import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firebase_series/posts/sighup_screen.dart';
import 'package:flutter_firebase_series/tools/ui_helper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController emailController = TextEditingController();

TextEditingController passController = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Firebase Series',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(emailController, false, 'Email'),
          UiHelper.CustomTextField(passController, true, 'Password'),
          UiHelper.buildButton(() {}, "Login"),
          dontHaveAcoountText(context),
        ],
      ),
    );
  }

  Row dontHaveAcoountText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Dont have account?'),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
          },
          child: const Text('SignUp',
              style: TextStyle(
                color: Colors.blue,
              )),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:schatapp/components/myButton.dart';
import 'package:schatapp/components/textfileds.dart';

import '../services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) {
    AuthService auth = AuthService();

    try {
      auth.signInWithEmailPassword(
          emailController.text.trim(), passwordController.text.trim());
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              size: 70,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 5),
            Text(
              'We Missed you, Welcome Back!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),
            MyTextFiled(
              hintText: 'Email',
              controller: emailController,
              obscureText: false,
            ),
            const SizedBox(height: 15),
            MyTextFiled(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            MyButton(
              buttonName: 'Login',
              onTap: () {
                login(context);
              },
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New here?',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    ' Register Now',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

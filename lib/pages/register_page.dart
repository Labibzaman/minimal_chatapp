import 'package:flutter/material.dart';

import 'package:schatapp/components/myButton.dart';
import 'package:schatapp/components/textfileds.dart';

import '../services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void register(BuildContext context) {
    AuthService authService = AuthService();
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        authService.signUpWithEmailPassword(_emailController.text.trim(),
            _confirmPasswordController.text.trim());
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(e.toString()),
              );
            });
      }
    }else{
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Password don't match"),
            );
          });
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
              'Lets Create a account simply',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),
            MyTextFiled(
              hintText: 'Email',
              controller: _emailController,
              obscureText: false,
            ),
            const SizedBox(height: 15),
            MyTextFiled(
              hintText: 'Password',
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            MyTextFiled(
              hintText: 'Confirm Password',
              controller: _confirmPasswordController,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            MyButton(
              buttonName: 'Register',
              onTap: (){
                register(context);
              },
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    ' Login',
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

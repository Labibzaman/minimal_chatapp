import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: GestureDetector(
            onTap: onTap,
            child: Text(buttonName)),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:schatapp/services/auth/auth_gate.dart';
import 'package:schatapp/firebase_options.dart';
import 'package:schatapp/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      home: const AuthGate(),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yummyai/core/auth/auth_gate.dart';
import 'package:yummyai/firebase_options.dart';

import 'package:yummyai/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const YummyAI());
}

class YummyAI extends StatelessWidget {
  const YummyAI({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const AuthGate(),
    );
  }
}

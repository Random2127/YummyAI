import 'package:flutter/material.dart';
import 'package:yummyai/auth/login_or_register.dart';

import 'package:yummyai/theme/light_mode.dart';

void main() {
  runApp(const YummyAI());
}

class YummyAI extends StatelessWidget {
  const YummyAI({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      home: LoginOrRegister(),
    );
  }
}

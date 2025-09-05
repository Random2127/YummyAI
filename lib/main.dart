import 'package:flutter/material.dart';

void main() {
  runApp(const YummyAI());
}

class YummyAI extends StatelessWidget {
  const YummyAI({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

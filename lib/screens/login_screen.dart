import 'package:flutter/material.dart';
import 'package:yummyai/auth/auth_service.dart';
import 'package:yummyai/widgets/components/my_button.dart';
import 'package:yummyai/widgets/components/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final Function()? onTap;

  LoginScreen({super.key, required this.onTap});

  void login(BuildContext context) async {
    // need to add context for dialogBox

    // auth service
    final authService = AuthService();
    // Try login
    try {
      await authService.signInWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text(e.toString())),

        //MINUTE 23
      );
    }

    // errors
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // loog
            Image(
              image: AssetImage('assets/pictures/healthy-bowl-frische.jpg'),
              height: 150,
              width: 150,
            ),

            // welcome message
            Text('Welcome back!!', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),

            //email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(height: 20),

            //pw testfield
            MyTextField(
              hintText: 'Password',
              obscureText: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 20),

            // login button
            MyButton(textButton: 'Login', onTap: () => login(context)),

            // register now
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yummyai/auth/auth_service.dart';
import 'package:yummyai/widgets/components/my_button.dart';
import 'package:yummyai/widgets/components/my_text_field.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final Function()? onTap;

  RegisterScreen({super.key, required this.onTap});

  void register(BuildContext context) {
    final auth = AuthService();

    // check same pw -> create user
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        auth.signUpWithEmailAndPassword(
          _emailController.text,
          _passwordController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text(e.toString())),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: Text("Passwords don't match!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
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
                Text(
                  "Let's make a new account",
                  style: TextStyle(fontSize: 18),
                ),
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

                // confirm password textfield
                MyTextField(
                  hintText: 'Confirm password',
                  obscureText: true,
                  controller: _confirmPasswordController,
                ),
                const SizedBox(height: 20),
                // login button
                MyButton(
                  textButton: 'Register',
                  onTap: () => register(context),
                ),

                // register now
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Text(
                        'Login now',
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
        ),
      ),
    );
  }
}

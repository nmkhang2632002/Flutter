import 'package:beginner/core/config/theme/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signUpText(),
            SizedBox(height: 10),
            _nameInput(),
            SizedBox(height: 20),
            _emailInput(),
            SizedBox(height: 20),
            _passwordInput(),
            SizedBox(height: 40),
            _signUpButton(),
            SizedBox(height: 20),
            _signInText(context),
          ],
        ),
      ),
    );
  }

  Widget _signUpText() {
    return Text(
      'Create Account',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _nameInput() {
    return TextField(
      decoration: InputDecoration(hintText: 'Full Name'),
    );
  }

  Widget _emailInput() {
    return TextField(
      decoration: InputDecoration(hintText: 'Email'),
    );
  }

  Widget _passwordInput() {
    return TextField(
      decoration: InputDecoration(hintText: 'Password'),
      obscureText: true,
    );
  }

  Widget _signUpButton() {
    return ReactiveButton(
      title: 'Sign Up',
      activeColor: AppColors.primary,
      onPressed: () async {},
      onFailure: (error) => error,
      onSuccess: () {},
    );
  }

  Widget _signInText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: 'Sign In',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}

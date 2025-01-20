import 'package:beginner/common/help/navigation/app_navigation.dart';
import 'package:beginner/core/config/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';
import 'package:flutter/gestures.dart';
import 'package:beginner/presentation/auth/pages/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: EdgeInsets.only(top: 100, right: 16, left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _signinText(),
                SizedBox(
                  height: 10,
                ),
                _emailInput(),
                SizedBox(
                  height: 20,
                ),
                _passwordInput(),
                SizedBox(
                  height: 40,
                ),
                _signInButton(),
                SizedBox(height: 20),
                _signUpText(context),
              ],
            )));
  }

  Widget _signinText() {
    return Text(
      'Login',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
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

  Widget _signInButton() {
    return ReactiveButton(
      title: 'Sign In',
      activeColor: AppColors.primary,
      onPressed: () async {},
      onFailure: (error) => error,
      onSuccess: () {},
    );
  }

  Widget _signUpText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigate to signup page
                AppNavigation.push(context, SignUp());
              },
          ),
        ],
      ),
    );
  }
}

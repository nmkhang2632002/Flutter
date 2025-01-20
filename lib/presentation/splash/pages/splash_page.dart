import 'package:beginner/common/help/navigation/app_navigation.dart';
import 'package:beginner/core/config/assets/app_images.dart';
import 'package:beginner/presentation/auth/pages/signin.dart';
import 'package:beginner/presentation/home/pages/home.dart';
import 'package:beginner/presentation/splash/bloc/splash_cubit.dart';
import 'package:beginner/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is Authenticated) {
            AppNavigation.pushReplacement(context, Home());
          } else if (state is UnAuthenticated) {
            AppNavigation.pushReplacement(context, Signin());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.imageSplashBackground),
                    fit: BoxFit.cover // Corrected path
                    ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff1a1b20).withAlpha(0),
                Color(0xff1a1b20)
              ], begin: Alignment.center, end: Alignment.bottomCenter)),
            ),
          ],
        ),
      ),
    );
  }
}

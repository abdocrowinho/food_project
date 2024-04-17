import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/splach_scrren/presentation/view/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            MyColors.kcolors3,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: SplachScreenBody(),
        ),
      ),
    );
  }
}

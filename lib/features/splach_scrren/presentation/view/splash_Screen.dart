import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/features/splach_scrren/presentation/view/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.green,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SplachScreenBody(),
      ),
    );
  }
}

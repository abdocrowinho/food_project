import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomCoverSignUpScreen extends StatelessWidget {
  const CustomCoverSignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/background.png',
              ),
            ),
          ),
        ),
        Positioned(
          right: 60,
          top: 50,
          child: Image.asset('assets/clock.png'),
        ),
        Positioned(
            right: MediaQuery.of(context).size.width / 2 - 20,
            top: 0,
            child: Image.asset(
              'assets/light-2.png',
              height: 120,
              width: 50,
            )),
        Positioned(
            right: MediaQuery.of(context).size.width * .68,
            top: 0,
            child: SizedBox(
              width: 60,
              height: 160,
              child: Image.asset(
                'assets/light-1.png',
                fit: BoxFit.fill,
              ),
            )),
        Positioned(
            right: MediaQuery.of(context).size.width * .5 - 50,
            top: 150,
            child: const Text(
              'SignUP',
              style: TextStyle(
                  color: MyColors.kcolors0,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

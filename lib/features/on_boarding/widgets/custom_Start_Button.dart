import 'package:flutter/material.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/core/utils/styels.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomStartButton extends StatelessWidget {
  const CustomStartButton({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setBool("isViewed", true);
        context.go(Routs.login);
        print(
          preferences.getBool("isViewed"),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.kcolors3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: (width <= 550)
            ? const EdgeInsets.symmetric(horizontal: 100, vertical: 20)
            : EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 25),
        textStyle: TextStyle(fontSize: (width <= 550) ? 13 : 17),
      ),
      child: const Text(
        "START",
        style: AppStyels.style1,
      ),
    );
  }
}

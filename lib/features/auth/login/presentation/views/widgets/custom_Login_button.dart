import 'package:flutter/material.dart';
import 'package:food_project/core/utils/styels.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton(
      {super.key, required this.tittle, required this.onPressed});
  final String tittle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        backgroundColor: MyColors.kcolors3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: const TextStyle(fontSize: 17),
      ),
      child: Text(
        tittle,
        style: AppStyels.style1,
      ),
    );
  }
}

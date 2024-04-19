import 'package:flutter/material.dart';
import 'package:food_project/core/styels.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomSendButton extends StatelessWidget {
  const CustomSendButton({super.key, required this.onPressed});

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
      child: const Text(
        'Send',
        style: AppStyels.style1,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({
    super.key,
    required PageController controller,
    required this.width,
  }) : _controller = controller;

  final PageController _controller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _controller.jumpToPage(2);
      },
      style: TextButton.styleFrom(
        elevation: 0,
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: (width <= 550) ? 13 : 17,
        ),
      ),
      child: const Text(
        "SKIP",
        style: TextStyle(color: MyColors.kcolors3),
      ),
    );
  }
}

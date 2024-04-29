import 'package:flutter/material.dart';
import 'package:food_project/core/utils/styels.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomNextElvatedButton extends StatelessWidget {
  const CustomNextElvatedButton({
    super.key,
    required PageController controller,
    required this.width,
  }) : _controller = controller;

  final PageController _controller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _controller.nextPage(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.kcolors3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
        padding: (width <= 550)
            ? const EdgeInsets.symmetric(horizontal: 25, vertical: 15)
            : const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        textStyle: TextStyle(fontSize: (width <= 550) ? 13 : 17),
      ),
      child: Text("NEXT", style: AppStyels.style1),
    );
  }
}

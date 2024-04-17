import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/on_boarding/widgets/Custom_Skip_button.dart';
import 'package:food_project/features/on_boarding/widgets/custom_Start_Button.dart';
import 'package:food_project/features/on_boarding/widgets/custom_next_button.dart';
import 'package:food_project/features/on_boarding/widgets/onboarding_contents.dart';

class CustomColumnAfterPageView extends StatelessWidget {
  const CustomColumnAfterPageView({
    super.key,
    required int currentPage,
    required this.width,
    required PageController controller,
  })  : _currentPage = currentPage,
        _controller = controller;

  final int _currentPage;
  final double width;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onBoradingDisplay.length,
            (int index) => _buildDots(
              index: index,
            ),
          ),
        ),
        _currentPage + 1 == onBoradingDisplay.length
            ? Padding(
                padding: const EdgeInsets.all(30),
                child: CustomStartButton(width: width),
              )
            : Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSkipButton(controller: _controller, width: width),
                    CustomNextElvatedButton(
                        controller: _controller, width: width),
                  ],
                ),
              )
      ],
    );
  }

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: MyColors.kcolors3,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }
}

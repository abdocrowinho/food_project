import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/on_boarding/widgets/onboarding_contents.dart';
import 'package:food_project/features/on_boarding/widgets/size_config.dart';

class CustomColumnItems extends StatelessWidget {
  const CustomColumnItems({
    super.key,
    required this.height,
    required this.width,
    required this.i,
  });

  final double height;
  final double width;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          onBoradingDisplay[i].image,
          height: SizeConfig.blockV! * 35,
        ),
        SizedBox(
          height: (height >= 840) ? 60 : 30,
        ),
        Text(
          onBoradingDisplay[i].tittle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: MyColors.kcolors3,
            fontWeight: FontWeight.w600,
            fontSize: (width <= 550) ? 30 : 35,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          onBoradingDisplay[i].desc,
          style: TextStyle(
            color: Colors.black.withOpacity(.3),
            fontWeight: FontWeight.w300,
            fontSize: (width <= 550) ? 17 : 25,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

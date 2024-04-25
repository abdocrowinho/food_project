import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/views/widgets/carouselSliderColumn.dart';

class CarouselSliderBuilder extends StatelessWidget {
  const CarouselSliderBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .90,
          margin: const EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            gradient: const LinearGradient(
                transform: GradientRotation(12),
                colors: [
                  MyColors.kcolors3,
                  MyColors.kcolors0,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child:const CarouselSliderColumn(),
        ),
        Positioned(
          right: 2.w,
          child: Image.asset(
            'assets/test.png',
            height: 145.w,
          ),
        )
      ],
    );
  }
}

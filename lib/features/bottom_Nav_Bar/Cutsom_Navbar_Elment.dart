import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/bottom_Nav_Bar/Lists_For_Elment.dart';

class CustomNavBarElment extends StatelessWidget {
  const CustomNavBarElment({
    super.key,
    required this.currentindex,
    required this.index,
  });

  final int currentindex;

  final int index;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 1550),
          curve: Curves.fastLinearToSlowEaseIn,
          margin: EdgeInsets.only(
              bottom: index == currentindex ? size.width * .0 : 0,
              right: size.width * 0.038,
              left: size.width * .038),
          width: size.width * .128,
          height: index == currentindex ? size.width * .010 : 0,
          decoration: const BoxDecoration(
            color: MyColors.kcolors3,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 7.h),
          child: Icon(
            ListForElment.listoficon[index],
            size: size.width * .060,
            color: index == currentindex ? MyColors.kcolors3 : Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 1.h),
          child: Text(
            ListForElment.iconlabel[index],
            style: TextStyle(
                fontSize: 11.sp,
                color: index == currentindex ? MyColors.kcolors3 : Colors.grey),
          ),
        ),
      ],
    );
  }
}

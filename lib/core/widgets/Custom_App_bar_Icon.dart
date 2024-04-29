import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:go_router/go_router.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
    required this.iconData,
    this.iconColor,
    this.backGroundColor,
  });
  final IconData iconData;
  final Color? iconColor;
  final Color? backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 33.h,
        width: 37.w,
        decoration: BoxDecoration(
            color: backGroundColor ?? Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
            onPressed: () {
              (context).pop();
            },
            icon: Icon(
              color: iconColor ?? MyColors.kContainercolor,
              iconData,
              size: 20,
            )));
  }
}

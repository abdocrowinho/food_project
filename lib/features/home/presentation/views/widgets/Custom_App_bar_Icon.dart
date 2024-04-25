import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
    required this.iconData,
  });
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 33.h,
        width: 37.w,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              size: 20,
            )));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 12,
      child: Container(
        height: 30.h,
        width: 30.w,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.6),
          borderRadius: BorderRadius.circular(60),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            size: 15.sp,
            color: MyColors.kcolors3,
          ),
        ),
      ),
    );
  }
}

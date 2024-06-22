import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomAppBarEditProfile extends StatelessWidget {
  const CustomAppBarEditProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .15,
      width: double.infinity.w,
      decoration: const BoxDecoration(color: MyColors.kcolors3),
      child: Padding(
        padding: EdgeInsets.only(top: height * .08, left: width / 2.8),
        child: Text(
          "Edit Profile ",
          style: TextStyle(color: MyColors.kscaffoldColor, fontSize: 25.sp),
        ),
      ),
    );
  }
}

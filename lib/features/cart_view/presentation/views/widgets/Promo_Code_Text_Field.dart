import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class PromoCodeTextField extends StatelessWidget {
  const PromoCodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 50.h,
      decoration: const BoxDecoration(
          color: MyColors.kscaffoldColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))),
      child: TextField(
        cursorColor: MyColors.kcolors3,
        decoration: InputDecoration(
          hintText: 'Enter Promo Code',
          border: leftSideBorder(),
          focusedBorder: leftSideBorder(),
          enabledBorder: leftSideBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder leftSideBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: MyColors.kscaffoldColor),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        bottomLeft: Radius.circular(40),
      ),
    );
  }
}

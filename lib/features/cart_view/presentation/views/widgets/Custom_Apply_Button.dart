import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomApplyButton extends StatelessWidget {
  const CustomApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        focusColor: Colors.green,
        highlightColor: Colors.green,
        splashColor: Colors.green,
        onTap: () {},
        child: Container(
          width: 100.w,
          height: 50.h,
          decoration: const BoxDecoration(
              color: MyColors.kcolors3,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: const Center(
            child: Text(
              'Apply',
              style: TextStyle(color: MyColors.kContainercolor),
            ),
          ),
        ),
      ),
    );
  }
}

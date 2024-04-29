import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 1.w,
      bottom: 1.h,
      child: Stack(
        children: [
          Container(
            height: 27.h,
            width: 27.w,
            decoration: const BoxDecoration(
              color: MyColors.kcolors3,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3),
                bottomRight: Radius.circular(13),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: -5.w,
            top: -5.h,
            bottom: 0,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_outlined,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

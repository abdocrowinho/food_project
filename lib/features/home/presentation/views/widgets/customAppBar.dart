import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/views/widgets/AppBarElments.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: const BoxDecoration(color: MyColors.kcolors3),
        child: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child:const AppBarElments(),
        ),
      ),
    );
  }
}

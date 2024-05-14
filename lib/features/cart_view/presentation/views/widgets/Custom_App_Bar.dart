import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/widgets/Custom_App_Bar.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomAppBarCart extends StatelessWidget {
  const CustomAppBarCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.fromLTRB(8.w, 50.h, 8.w, 20.h),
        decoration: const BoxDecoration(color: MyColors.kcolors3),
        child: const AppBarActions(
          bars: false,
          text: 'CART      ',
        ),
      ),
    );
  }
}

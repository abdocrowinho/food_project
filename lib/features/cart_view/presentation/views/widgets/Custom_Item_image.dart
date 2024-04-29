import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomItemImage extends StatelessWidget {
  const CustomItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: MyColors.backgroundItems,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        'assets/FruitsCatogries.png',
        height: 70,
        width: 70,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/features/home/presentation/views/widgets/CustomShopButton.dart';
import 'package:food_project/features/home/presentation/views/widgets/TextForCarouselSlider.dart';

class CarouselSliderColumn extends StatelessWidget {
  const CarouselSliderColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, top: 18.h, bottom: 18.h),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [TextForCarouselSlider(), ShopNowButton()],
      ),
    );
  }
}

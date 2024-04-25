
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextForCarouselSlider extends StatelessWidget {
  const TextForCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Get 40% Discount\n on your first order\nFrom app',
      style: TextStyle(
          color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.bold),
      softWrap: true,
    );
  }
}


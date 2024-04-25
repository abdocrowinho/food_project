import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopNowButton extends StatelessWidget {
  const ShopNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15.h,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 95.w,
          height: 25.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Colors.white.withOpacity(.3)),
          child: Center(
            child: Text(
              'Shop Now',
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

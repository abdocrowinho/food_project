import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/widgets/Custom_Counter_Cart.dart';
import 'package:food_project/core/widgets/Custom_Details_Item_Column.dart';

class CustomRowDetailsAndcounter extends StatelessWidget {
  const CustomRowDetailsAndcounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DetailsItemColumn(
          spaceBetween: 3.h,
          textsize: 25.sp,
          ratingIconSize: 20.sp,
          textPriceSize: 20.sp,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: CustomCounterCart(
            spaceBetween: 10.w,
          ),
        )
      ],
    );
  }
}

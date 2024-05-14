import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/core/widgets/Custom_Counter_Cart.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Custom_Item_image.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Details_Item_Cart.dart';

class CustomItemCart extends StatelessWidget {
  const CustomItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: MyColors.kContainercolor,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomItemImage(),
          const CustomDetailsItemCart(),
          Padding(
            padding: EdgeInsets.fromLTRB(75.w, 27.h, 0.w, 0.h),
            child: const CustomCounterCart(),
          )
        ],
      ),
    );
  }
}

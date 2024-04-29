import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/textField_With_applyButton.dart';

class CustomEnterPromoCode extends StatelessWidget {
  const CustomEnterPromoCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 10.w,
        ),
        height: 100.h,
        decoration: BoxDecoration(
            color: MyColors.kContainercolor,
            borderRadius: BorderRadius.circular(13)),
        child: const CustomRowTextFieldAndApplyButton(),
      ),
    );
  }
}

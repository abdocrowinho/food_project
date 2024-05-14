import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/favorit_view/presentation/views/widgets/CustomCardBody.dart';
import 'package:food_project/features/favorit_view/presentation/views/widgets/Custom_Card_Button.dart';

class CustomFavoriteCard extends StatelessWidget {
  const CustomFavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.none,
      color: MyColors.kContainercolor,
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(100)),
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -30,
            top: 20,
            child: Image.asset(
              'assets/FruitsCatogries.png',
              height: 120.h,
            ),
          ),
          const CustomCardButton(),
          const CustomCardBody()
        ],
      ),
    );
  }
}

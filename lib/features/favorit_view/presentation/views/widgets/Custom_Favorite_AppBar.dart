import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomFavoriteAppBar extends StatelessWidget {
  const CustomFavoriteAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: false,
      backgroundColor: MyColors.kcolors3,
      expandedHeight: 40.h,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Favorite',
            style: TextStyle(color: MyColors.kContainercolor, fontSize: 22),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}

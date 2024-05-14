import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/views/widgets/Catgory_model.dart';

class CustomCatgoryAppBar extends StatelessWidget {
  const CustomCatgoryAppBar({
    super.key,
    required this.model,
  });
  final CatgoryModel model;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: false,
      backgroundColor: MyColors.kcolors3,
      expandedHeight: 40.h,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.name,
            style:
                const TextStyle(color: MyColors.kContainercolor, fontSize: 22),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}

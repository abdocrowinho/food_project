import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_Add_Button.dart';
import 'package:food_project/features/home/presentation/views/widgets/Item_Popular_List_Body.dart';
import 'package:go_router/go_router.dart';

class BuildPopuler extends StatelessWidget {
  const BuildPopuler({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return InkWell(
            onTap: () => (context).push(Routs.details),
            child: _populerItem(),
          );
        }),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18.w,
            mainAxisSpacing: 20.h,
            mainAxisExtent: 180.h),
      ),
    );
  }

  _populerItem() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(13)),
          ),
          child: const ItemPopularListBody(),
        ),
        const CustomAddButton()
      ],
    );
  }
}

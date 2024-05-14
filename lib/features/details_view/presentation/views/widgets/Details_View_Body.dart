import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/features/details_view/presentation/views/widgets/CustomDetailsAppBar.dart';
import 'package:food_project/features/details_view/presentation/views/widgets/CustomRowWithDetailsAndCounter.dart';
import 'package:food_project/features/details_view/presentation/views/widgets/List_Tile.dart';
import 'package:food_project/features/details_view/presentation/views/widgets/custom_container_AddToCart.dart';
import 'package:food_project/features/home/presentation/views/widgets/Bulid_populer.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomDetailsAppBar(),
                    const CustomRowDetailsAndcounter(),
                    const CustomListTile(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '   Relate Products',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              const BuildPopuler(),
            ],
          ),
        ),
        const CustomContainerAddToCart(),
      ],
    );
  }
}

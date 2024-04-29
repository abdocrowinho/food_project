import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/core/widgets/Custom_Counter_Cart.dart';
import 'package:food_project/core/widgets/Custom_Details_Item_Column.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Details_Item_Cart.dart';
import 'package:food_project/features/details_view/presentation/views/widgets/CustomAppBarActions.dart';

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
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 60, 10, 20),
                      decoration: const BoxDecoration(
                        color: MyColors.backgroundItems,
                      ),
                      child: Column(
                        children: [
                          const CustomAppBarActions(
                            text: 'Details     ',
                          ),
                          Image.asset(
                            'assets/FruitsCatogries.png',
                            height: 180,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DetailsItemColumn(
                          spaceBetween: 5.h,
                          textsize: 25,
                          ratingIconSize: 20,
                          textPriceSize: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: CustomCounterCart(
                            spaceBetween: 10.w,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 300,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: 150,
        )
      ],
    );
  }
}

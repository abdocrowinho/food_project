import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Custom_App_Bar.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Custom_Enter_Promo_Code.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Custom_Sliver_List_Cart.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBarCart(),
        CustomSliverListCart(),
        CustomEnterPromoCode(),
      ],
    );
  }
}

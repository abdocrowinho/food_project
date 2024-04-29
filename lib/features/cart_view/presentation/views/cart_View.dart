import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Cart_View_Body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: MyColors.kscaffoldColor, body: CartViewBody());
  }
}

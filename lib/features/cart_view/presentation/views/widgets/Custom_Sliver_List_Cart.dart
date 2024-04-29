import 'package:flutter/cupertino.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Custom_Item_Cart.dart';

class CustomSliverListCart extends StatelessWidget {
  const CustomSliverListCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const CustomItemCart();
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Custom_Apply_Button.dart';
import 'package:food_project/features/cart_view/presentation/views/widgets/Promo_Code_Text_Field.dart';

class CustomRowTextFieldAndApplyButton extends StatelessWidget {
  const CustomRowTextFieldAndApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PromoCodeTextField(),
        CustomApplyButton(),
      ],
    );
  }
}

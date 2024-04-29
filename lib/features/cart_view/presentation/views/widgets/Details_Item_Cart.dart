import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_project/core/widgets/Custom_Price_Text_Span.dart';
import 'package:food_project/core/utils/styels.dart';

class CustomDetailsItemCart extends StatelessWidget {
  const CustomDetailsItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 7,
          ),
          Text(
            'pineaple',
            style: AppStyels.style3,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Fruits',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 7,
          ),
          CustomPriceTextSpan(text: '1.22')
        ],
      ),
    );
  }
}

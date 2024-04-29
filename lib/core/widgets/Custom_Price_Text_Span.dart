import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPriceTextSpan extends StatelessWidget {
  const CustomPriceTextSpan({
    super.key,
    required this.text,
    this.textPriceSize,
  });
  final String text;
  final double? textPriceSize;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: r'$' + text.toString(),
            style: TextStyle(
                color: Colors.green,
                fontSize: textPriceSize ?? 15,
                fontWeight: FontWeight.w500),
          ),
          TextSpan(
              text: '/KG',
              style:
                  TextStyle(color: Colors.grey, fontSize: textPriceSize ?? 15))
        ],
      ),
    );
  }
}

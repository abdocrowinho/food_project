import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/widgets/Custom_Price_Text_Span.dart';
import 'package:food_project/core/widgets/Custom_Rating.dart';

class DetailsItemColumn extends StatelessWidget {
  const DetailsItemColumn({
    super.key,
    this.textsize,
    this.ratingIconSize,
    this.textPriceSize,
    this.spaceBetween,
  });
  final double? textsize;
  final double? ratingIconSize;
  final double? textPriceSize;
  final double? spaceBetween;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, top: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'orange',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: textsize ?? 15),
          ),
          SizedBox(
            height: spaceBetween ?? 3.h,
          ),
          CustomRating(
            size: ratingIconSize,
          ),
          SizedBox(
            height: spaceBetween ?? 3.h,
          ),
          CustomPriceTextSpan(
            textPriceSize: textPriceSize,
            text: '1.22',
          )
        ],
      ),
    );
  }
}

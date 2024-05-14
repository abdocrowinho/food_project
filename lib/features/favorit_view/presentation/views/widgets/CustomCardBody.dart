import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomCardBody extends StatelessWidget {
  const CustomCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60.w,
          ),
          SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'pinneaple',
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: MyColors.kcolors3),
                        child: Icon(
                          Icons.bolt,
                          size: 15,
                          color: MyColors.kContainercolor,
                        ),
                      ),
                      Text(
                        '   Kcl 250',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const VerticalDivider(
                        width: 30,
                        indent: 4,
                        endIndent: 4,
                        thickness: .5,
                        color: Colors.black,
                      ),
                      Text(r'$4.99')
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 60.w,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomCounterCart extends StatefulWidget {
  const CustomCounterCart({
    super.key,
    this.spaceBetween,
  });
  final double? spaceBetween;
  @override
  State<CustomCounterCart> createState() => _CustomCounterCartState();
}

class _CustomCounterCartState extends State<CustomCounterCart> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        minusButton(),
        SizedBox(
          width: widget.spaceBetween ?? 7.w,
        ),
        Text('${counter.toString()} KG'),
        SizedBox(
          width: widget.spaceBetween ?? 7.w,
        ),
        plusButton()
      ],
    );
  }

  Container minusButton() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(30)),
      child: IconButton(
        onPressed: () {
          setState(() {
            counter == 0 ? 0 : counter -= 1;
          });
        },
        icon: const Icon(
          FontAwesomeIcons.minus,
          size: 15,
        ),
      ),
    );
  }

  Container plusButton() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: MyColors.kcolors3, borderRadius: BorderRadius.circular(30)),
      child: IconButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          icon: const Icon(
            FontAwesomeIcons.plus,
            size: 15,
            color: MyColors.kContainercolor,
          )),
    );
  }
}

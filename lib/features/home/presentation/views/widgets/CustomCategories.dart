import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class BuildCategories extends StatelessWidget {
  const BuildCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) => _categoriesItem(index)),
        ),
      ),
    );
  }

  Container _categoriesItem(int index) {
    return Container(
      width: 65.w,
      height: 85.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: const BoxDecoration(
        color: MyColors.kContainercolor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            maxRadius: 28,
            minRadius: 10,
            backgroundColor: MyColors.backgroundItems,
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.asset(
                catogriesImg[index],
                width: 30,
                height: 50,
              ),
            ),
          ),
          Text(
            catogriesName[index],
            style: TextStyle(
              color: MyColors.kcolors3.withOpacity(.6),
            ),
          )
        ],
      ),
    );
  }
}

List<String> catogriesImg = [
  'assets/test.png',
  'assets/FruitsCatogries.png',
  'assets/MeatCategories.png',
  'assets/DairyCategories.png'
];
List<String> catogriesName = ['Vaggies', 'Fruits', 'Meat', 'Dairy'];

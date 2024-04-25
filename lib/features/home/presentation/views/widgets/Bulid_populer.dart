import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';

class BuildPopuler extends StatelessWidget {
  const BuildPopuler({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      sliver: SliverGrid(
        delegate:
            SliverChildBuilderDelegate((context, index) => _populerItem()),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18.w,
            mainAxisSpacing: 20.h,
            mainAxisExtent: 180.h),
      ),
    );
  }

  _populerItem() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(13)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 3.h, 3.w, 3.h),
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color(0xffE4F4EA),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Image.asset(
                        'assets/FruitsCatogries.png',
                        width: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 12,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.6),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 15.sp,
                          color: MyColors.kcolors3,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 15.w, top: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'orange',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    RatingBar.builder(
                      itemSize: 15,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: r'$1.22',
                            style: TextStyle(color: Colors.green),
                          ),
                          TextSpan(
                              text: '/KG', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 1,
          bottom: 1,
          child: Stack(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: MyColors.kcolors3,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3),
                    bottomRight: Radius.circular(13),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: -5.w,
                top: -5.h,
                bottom: 0,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_outlined,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}

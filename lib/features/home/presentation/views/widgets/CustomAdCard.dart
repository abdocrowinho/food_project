import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/view_model/cubit/main_home_cupit_cubit.dart';
import 'package:food_project/features/home/presentation/views/widgets/carouselSliderBuilder.dart';

class CustomAdCard extends StatefulWidget {
  const CustomAdCard({
    super.key,
  });

  @override
  State<CustomAdCard> createState() => _CustomAdCardState();
}

class _CustomAdCardState extends State<CustomAdCard> {
  MainHomeCupitCubit cubitUsage = MainHomeCupitCubit();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        cubitUsage.currentindex = index;
                      });
                    },
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 500.0,
                    enlargeCenterPage: true),
                itemBuilder: (context, index, realIndex) {
                  return const CarouselSliderBuilder();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return _buildDots(index);
                }))
          ],
        ),
      ),
    );
  }

  _buildDots(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(3),
      height: 10,
      width: 10,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        color:
            cubitUsage.currentindex == index ? MyColors.kcolors3 : Colors.grey,
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/home/presentation/views/widgets/Catgory_model.dart';
import 'package:go_router/go_router.dart';

class BuildCategories extends StatelessWidget {
  const BuildCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(CatgoryForm.catgoryForm.length, (index) {
            CatgoryModel model = CatgoryForm.catgoryForm[index];

            return InkWell(
                onTap: ontap(index: index, Context: context, model: model),
                child: _categoriesItem(index, model));
          }),
        ),
      ),
    );
  }

  VoidCallback ontap(
      {required int index,
      required BuildContext Context,
      required CatgoryModel model}) {
    List<VoidCallback> ontap = [
      // Vega
      () {
        GoRouter.of(Context).push(Routs.catgory, extra: model);
      },
      // Frutis
      () {
        GoRouter.of(Context).push(Routs.catgory, extra: model);
      }, // Meat
      () {
        GoRouter.of(Context).push(Routs.catgory, extra: model);
      },
      // Dairy
      () {
        GoRouter.of(Context).push(Routs.catgory, extra: model);
      }
    ];
    return ontap[index];
  }

  Container _categoriesItem(int index, CatgoryModel model) {
// remember to do this instance of catgory model in Cupit
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
                model.image,
                width: 30,
                height: 50,
              ),
            ),
          ),
          Text(
            model.name,
            style: TextStyle(
              color: MyColors.kcolors3.withOpacity(.6),
            ),
          )
        ],
      ),
    );
  }
}

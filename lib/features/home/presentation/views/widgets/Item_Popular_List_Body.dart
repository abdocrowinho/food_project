import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/widgets/Custom_Details_Item_Column.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_Favorite_Icon.dart';

class ItemPopularListBody extends StatelessWidget {
  const ItemPopularListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            const FavoriteIcon()
          ],
        ),
        const DetailsItemColumn()
      ],
    );
  }
}

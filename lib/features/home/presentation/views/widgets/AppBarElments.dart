import 'package:flutter/material.dart';
import 'package:food_project/core/styels.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_App_Bar.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_Search_Text_Field.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_sized_box.dart';

class AppBarElments extends StatelessWidget {
  const AppBarElments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarActions(),
        Text(
          'bardihara,Dahka',
          style: AppStyels.style2.copyWith(
            color: Colors.white.withOpacity(.7),
          ),
        ),
        const ConstSizedBox(),
        const CustomSearchTextField(),
        const ConstSizedBox(),
      ],
    );
  }
}

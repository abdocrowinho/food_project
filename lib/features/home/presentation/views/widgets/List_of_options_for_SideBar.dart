import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/Profile_View_Model.dart';

class CustomSideOptions extends StatelessWidget {
  const CustomSideOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProfileViewModel profileViewModel = ProfileViewModel();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: profileViewModel.optionsList.length,
            itemBuilder: (context, index) {
              ProfileViewForm form = profileViewModel.optionsList[index];
              return InkWell(
                splashColor: Colors.transparent,
                onTap: profileViewModel.onTapFunction(context, index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    color: MyColors.kContainercolor.withOpacity(.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  color: MyColors.backgroundItems),
                              child: Icon(
                                form.profileIcon.icon,
                                size: 20,
                                color: MyColors.kcolors3,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(form.profileoption),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: MyColors.kcolors3,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

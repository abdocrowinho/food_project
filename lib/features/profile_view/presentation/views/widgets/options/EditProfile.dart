import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/view_model/models/User_Model.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/UserNameFaield.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/birthDateField.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/customAppBar.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/emailEditField.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/genderEditField.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/personalCard.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/optionsForNewImages.dart';
import 'package:food_project/features/profile_view/data/repos/profile_repo_Impl.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  String? userName;
  String? email;

  bool isNeedToChangeImage = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProfileCubit>(context);
    return GestureDetector(
      onTap: () {
        cubit.ifNotNeedToChangeImage();
      },
      child: Scaffold(
        backgroundColor: MyColors.kscaffoldColor,
        body: StreamBuilder(
            stream: cubit.firebaseFirestoreStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: MyColors.kcolors3,
                  ),
                );
              }
              if (snapshot.hasError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      snapshot.error.toString(),
                    ),
                  ),
                );
              }
              if (!snapshot.hasData || !snapshot.data!.exists) {
                return const Center(child: Text("no Data Available"));
              }
              var userData = snapshot.data!.data() as Map<String, dynamic>;
              UserModel user = UserModel(
                  name: userData["name"],
                  email: userData["email"],
                  img: userData["img"],
                  gender: userData["gender"],
                  birthDate: userData["bitrhDate"]);

              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const CustomAppBarEditProfile(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Form(
                            autovalidateMode: AutovalidateMode.always,
                            key: formKey,
                            child: Column(
                              children: [
                                PersonalCard(
                                  user: user,
                                ),
                                const SpaceBetweenFields(),
                                UserNameEditFaild(
                                  userName: user.name,
                                  onChange: (value) {
                                    if (value != null) {
                                      userName = value;
                                    }
                                    if (value!.isEmpty) {
                                      userName = user.name;
                                    }
                                  },
                                ),
                                const SpaceBetweenFields(),
                                BirthDateEditFaild(
                                  user: user,
                                ),
                                const SpaceBetweenFields(),
                                GenderEditFaild(
                                  userModel: user,
                                  onChanged: (value) {
                                    cubit.selcatedGender = value;

                                    cubit.setSelctedGender();
                                  },
                                ),
                                const SpaceBetweenFields(),
                                EmailEditFaild(email: user.email),
                                const SpaceBetweenFields(),
                                MaterialButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      ProfileRepoImpl().updateUserIformetion(
                                          UserModel(
                                              birthDate:
                                                  cubit.initialDate.toString(),
                                              gender: cubit.selcatedGender ??
                                                  user.gender,
                                              name: userName ?? user.name,
                                              email: email ?? user.email,
                                              img: user.img));
                                    }
                                  },
                                  color: MyColors.kcolors3,
                                  child: Text(
                                    "accepte",
                                    style: TextStyle(
                                        color: MyColors.kscaffoldColor,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  context.watch<ProfileCubit>().isNeedToChangeImage
                      ? const OptionsForNewImage(
                          top: 250,
                          left: 250,
                        )
                      : Container()
                ],
              );
            }),
      ),
    );
  }
}

class SpaceBetweenFields extends StatelessWidget {
  const SpaceBetweenFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

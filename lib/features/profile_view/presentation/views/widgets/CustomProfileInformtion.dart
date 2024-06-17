import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/name_and_email.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/optionsForNewImages.dart';
import 'package:go_router/go_router.dart';

class CustomProfileInformtion extends StatefulWidget {
  const CustomProfileInformtion({
    super.key,
  });

  @override
  State<CustomProfileInformtion> createState() =>
      _CustomProfileInformtionState();
}

class _CustomProfileInformtionState extends State<CustomProfileInformtion> {
  bool imageOptions = false;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      StreamBuilder<DocumentSnapshot>(
        stream: streamSnapShot(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Error fetcing Data"));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text("no Data Available"));
          }
          var UserData = snapshot.data!.data() as Map<String, dynamic>;
          String userName = UserData["name"];
          String email = UserData["email"];
          String? profilePicture = UserData["img"];
          return Row(
            children: [
              BlocProvider<ProfileCubit>(
                  create: (context) => ProfileCubit(),
                  child: InkWell(
                    onLongPress: () => setState(() {
                      imageOptions = !imageOptions;
                    }),
                    onTap: () async {
                      setState(() {
                        if (imageOptions == true) {
                          imageOptions = false;
                        } else {
                          context.go(Routs.home);
                        }
                      });
                    },
                    child: BlocBuilder<ProfileCubit, ProfileState>(
                      builder: (context, state) {
                        if (state is ProfileImageLoading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (state is ProfileImageFaliure) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(state.errorMessage),
                            ),
                          );
                          return Container();
                        } else if (state is ProfileImageStay) {
                          return profilePic(profilePicture);
                        } else {
                          return profilePic(profilePicture);
                        }
                      },
                    ),
                  )),
              NameAndEmail(userName: userName, email: email)
            ],
          );
        },
      ),
      imageOptions ? const OptionsForNewImage() : Container()
    ]);
  }

  CircleAvatar profilePic(String? profilePicture) {
    return CircleAvatar(
      radius: 55.sp,
      backgroundImage: profilePicture != null
          ? Image.network(profilePicture).image
          : Image.asset("assets/TakeAPohto.png").image,
    );
  }

  Stream<DocumentSnapshot<Object?>> streamSnapShot() {
    return FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots();
  }
}

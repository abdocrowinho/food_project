import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:food_project/features/profile_view/data/repos/profile_repo_Impl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  XFile? sourceFile;
  String? url;
  File? file;
  bool isNeedToChangeImage = false;
  DateTime? initialDate = DateTime.now();
  DateTime? newDate;
  String? selcatedGender;
  setSelctedGender() {
    if (selcatedGender == null) {
      return null;
    } else {
      emit(GenderField(selcatedGender!));
    }
  }

  setDatetakedFromUser() {
    // ignore: unnecessary_null_comparison
    if (newDate == null) {
      return;
    } else {
      initialDate = newDate!;
      emit(ProfileBirthDateField(initialDate!));
    }
  }

  ifNeedToChangeImage() {
    isNeedToChangeImage = !isNeedToChangeImage;
    emit(ProfileImageOptions(isNeedToChangeImage));
  }

  ifNotNeedToChangeImage() {
    isNeedToChangeImage = false;
    emit(ProfileImageOptions(isNeedToChangeImage));
  }

  updateProfileImageByGallery() async {
    emit(ProfileImageLoading());
    try {
      ImagePicker image = ImagePicker();
      sourceFile = await image.pickImage(source: ImageSource.gallery);
      if (sourceFile == null) {
        emit(ProfileImageStay());
        return null;
      }
      var path = basename(sourceFile!.path);
      file = File(sourceFile!.path);
      Reference ref = FirebaseStorage.instance.ref("images/$path");
      await ref.putFile(file!);
      url = await ref.getDownloadURL();
      ProfileRepoImpl().updateimg(url!);
      emit(ProfileImageSuccssee());
    } on Exception catch (e) {
      emit(ProfileImageFaliure(e.toString()));
    }
  }

  updateProfileImageByCamera() async {
    emit(ProfileImageLoading());
    try {
      ImagePicker image = ImagePicker();
      sourceFile = await image.pickImage(source: ImageSource.camera);
      if (sourceFile == null) {
        emit(ProfileImageStay());
        return null;
      }
      var path = basename(sourceFile!.path);
      file = File(sourceFile!.path);
      Reference ref = FirebaseStorage.instance.ref("images/$path");
      await ref.putFile(file!);
      url = await ref.getDownloadURL();
      ProfileRepoImpl().updateimg(url!);
      emit(ProfileImageSuccssee());
    } on Exception catch (e) {
      emit(ProfileImageFaliure(e.toString()));
    }
  }

  Stream<DocumentSnapshot<Object?>>? firebaseFirestoreStream() {
    return FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots();
  }
}

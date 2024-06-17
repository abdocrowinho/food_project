import 'dart:io';

import 'package:bloc/bloc.dart';
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
}

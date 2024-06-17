import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

part 'take_image_state.dart';

class TakeImageCubit extends Cubit<TakeImageState> {
  TakeImageCubit() : super(TakeImageInitial());

  String defultimage = "assets/TakeAPohto.png";
  String? url;
  File? file;
  takeImageFromUserGallery() async {
    emit(Loading());
    ImagePicker picker = ImagePicker();
    final XFile? imageFromGallry =
        await picker.pickImage(source: ImageSource.gallery);
    if (imageFromGallry == null) {
      emit(Null());
      return null;
    }
    file = File(imageFromGallry.path);
    var path = p.basename(imageFromGallry.path);

    Reference ref = FirebaseStorage.instance.ref("images/$path");
    await ref.putFile(file!);
    url = await ref.getDownloadURL();

    emit(NotNull(pathImage: path));
  }

  takeImageFromUserCamera() async {
    emit(Loading());
    ImagePicker picker = ImagePicker();
    final XFile? imageFromGallry =
        await picker.pickImage(source: ImageSource.camera);
    if (imageFromGallry == null) {
      emit(Null());
      return null;
    }
    file = File(imageFromGallry.path);

    var path = p.basename(imageFromGallry.path);

    Reference ref = FirebaseStorage.instance.ref("images/$path");
    await ref.putFile(file!);
    url = await ref.getDownloadURL();
    emit(NotNull(pathImage: path));
  }
}

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

part 'take_image_state.dart';

class TakeImageCubit extends Cubit<TakeImageState> {
  TakeImageCubit() : super(TakeImageInitial());

  String Pathimage = "assets/TakeAPohto.png";
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

    var pathimage = p.basename(imageFromGallry.path);
    print(pathimage);
    emit(NotNull(pathImage: pathimage));
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

    var pathimage = p.basename(imageFromGallry.path);
    print(pathimage);
    emit(NotNull(pathImage: pathimage));
  }
}

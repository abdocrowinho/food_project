import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_project/features/auth/view_model/cubit/Auth_cubit/auth_cubit.dart';
import 'package:path/path.dart' as p;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_project/features/auth/data/web_Services/AuthRepoImpl.dart';
import 'package:image_picker/image_picker.dart';

class CustomProfileInformtion extends StatefulWidget {
  const CustomProfileInformtion({
    super.key,
  });

  @override
  State<CustomProfileInformtion> createState() =>
      _CustomProfileInformtionState();
}

class _CustomProfileInformtionState extends State<CustomProfileInformtion> {
  File? _file;
  String url = '';

  getImage() async {
    ImagePicker _imagePickerFormGallry = ImagePicker();
    final XFile? imagegallry =
        await _imagePickerFormGallry.pickImage(source: ImageSource.camera);
    if (imagegallry == null) {
      return null;
    }
    _file = File(imagegallry.path);
    UploadTask? uploadTask;
    var pathimage = p.basename(imagegallry.path);
    var ref = FirebaseStorage.instance.ref(pathimage);
    uploadTask = ref.putData(await _file!.readAsBytes());
    BlocProvider.of<AuthCubit>(context).img.text =
        await (await uploadTask).ref.getDownloadURL();

    setState(() {});
  }

  String _currentUserName = '';
  String _currentUserEmail = '';

  @override
  void initState() {
    getCurrentUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () async {
            await getImage();
          },
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/profilepicture.jpg"),
          ),
        ),
        Expanded(
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: Text(
              _currentUserName,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(
              _currentUserEmail,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }

  void getCurrentUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    final userId = user!.uid;

    final Userdata = await AuthRepoImpl().getUserFromdFireBase(userId);

    setState(() {
      _currentUserName = Userdata.name;
      _currentUserEmail = Userdata.email;
    });
  }
}

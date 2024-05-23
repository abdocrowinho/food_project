import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_project/features/auth/data/web_Services/AuthRepoImpl.dart';
import 'package:food_project/features/auth/view_model/models/User_Model.dart';
import 'package:food_project/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<UserModel> getCurrentUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    final userId = user!.uid;

    final Userdata = await AuthRepoImpl().getUserFromdFireBase(userId);

    return Userdata;
  }
}

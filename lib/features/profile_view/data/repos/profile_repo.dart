import 'package:food_project/features/auth/view_model/models/User_Model.dart';

abstract class ProfileRepo {
  void updateimg(String url);
  void updateUserIformetion(UserModel user);
}

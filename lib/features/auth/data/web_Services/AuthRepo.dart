import 'package:food_project/features/auth/view_model/models/User_Model.dart';

abstract class AuthRepo {
  void saveUserToFirestore(UserModel user);
}

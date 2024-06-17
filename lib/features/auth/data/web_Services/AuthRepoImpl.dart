import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_project/features/auth/data/web_Services/AuthRepo.dart';
import 'package:food_project/features/auth/view_model/models/User_Model.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  void saveUserToFirestore(UserModel user) {
    final CurrentUser = FirebaseAuth.instance.currentUser;
    final userId = CurrentUser!.uid;
    final firestoreInstance = FirebaseFirestore.instance;

    final userdata = user.toJson();
    firestoreInstance.collection('users').doc(userId).set(userdata).then((_) {
      print('User data saved successfully!');
    }).catchError((error) {
      print('Failed to save user data: $error');
    });
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

  @override
  Future<UserModel> getUserFromdFireBase(String userId) async {
    final firestoreInstance = FirebaseFirestore.instance;
    final userDoc =
        await firestoreInstance.collection('users').doc(userId).get();
    if (userDoc.exists) {
      final userdata = userDoc.data();

      return UserModel.fromJson(userdata!);
    } else {
      return UserModel(name: 'Unknown', email: '');
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_project/features/profile_view/data/repos/profile_repo.dart';

class ProfileRepoImpl extends ProfileRepo {
  @override
  void updateimg(String url) async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    DocumentReference userDocRef =
        FirebaseFirestore.instance.collection('users').doc(userId);

    try {
      // Update the specific attribute
      await userDocRef.update({'img': url});

      print('User attribute updated successfully!');
    } catch (e) {
      print('Error updating user attribute: $e');
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lookout_service/models/user_data.dart';
import 'package:stacked/stacked.dart';

class RepositoryService with ReactiveServiceMixin {
  RepositoryService() {
    listenToReactiveValues([
      _user,
    ]);
  }

  final ReactiveValue<UserData?> _user = ReactiveValue<UserData?>(null);

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore db = FirebaseFirestore.instance;

  UserData? get userData => _user.value;

  void setUser(UserData? userObject) {
    _user.value = userObject;
  }

  UserData? getUser() {
    return userData;
  }

  Future<void> saveUserData(UserData userData) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(userData.uid)
        .set(userData.toMap());
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getUserData() {
    String userId =
        userData?.uid ?? FirebaseAuth.instance.currentUser?.uid ?? "none";
    return db.collection("users").where("id", isEqualTo: userId).get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAppNameFromFirebase() {
    String userId =
        userData?.uid ?? FirebaseAuth.instance.currentUser?.uid ?? "none";
    return db.collection("appdata").get();
  }
}

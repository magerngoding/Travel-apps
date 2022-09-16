import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_apps/models/user_model.dart';

// INPUT DATA TABLE KE CLOUD FIRESTORE
class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:planetrip_app/models/user_model.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobi': user.hobi,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ldj_app/features/authentication/models/firestore_userdata.dart';

class FirestoreUserRepo implements FirestoreUserdata {
  FirestoreUserRepo(this._db);

  final FirebaseFirestore _db;

  @override
  Future<FirestoreUserdata?> get(String name) async {
    final doc = await _db.collection("users").doc(name).get();
    if (doc.exists) {
      final data = doc.data();
    }
    return null;
  }

  @override
  // TODO: implement emailUser
  String get emailUser => throw UnimplementedError();

  @override
  // TODO: implement nameUser
  String get nameUser => throw UnimplementedError();

  @override
  // TODO: implement passwordUser
  String get passwordUser => throw UnimplementedError();
}

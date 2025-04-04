import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_userdata.dart';

class FirestoreUserRepo implements FirestorUserAbstract {
  FirestoreUserRepo(this._db);

  final FirebaseFirestore _db;

  @override
  Future<bool> setUser(String name, email) {
    _db.collection("Users").doc().set({"name": name, "email": email});
    return Future.value(true);
  }

  @override
  Future<String> getUser(String name, email) {
    _db
        .collection("Users")
        .doc()
        .get({"name": name, "email": email} as GetOptions?);
    return Future.value(
      name,
    );
  }

  @override
  Future<String> updateUser(String name, email) {
    _db.collection("Users").doc().update({"name": name, "email": email});
    throw UnimplementedError();
  }

  @override
  Future<String> creatUser(String name, email) {
    _db.collection("Users").doc().creatUser(
      {},
      String: name,
      Dynamic: email,
    );
    throw UnimplementedError();
  }

  @override
  Future<String> deletUser(String name, email) {
    _db.collection("Users").doc().update({"name": name, "email": email});
    throw UnimplementedError();
  }
}

extension on DocumentReference<Map<String, dynamic>> {
  void creatUser(Map<String, dynamic> map,
      {required String, required Dynamic}) {}
}

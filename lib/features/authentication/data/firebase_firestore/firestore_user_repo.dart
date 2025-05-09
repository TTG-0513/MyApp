import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_userdata.dart';

class FirestoreUserRepo implements FirestoreUserAbstract {
  final FirebaseFirestore _db;

  FirestoreUserRepo(this._db);

  @override
  Future<bool> createUser(String name, email) {
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
  Future<String> deletUser(String email) async {
    final querySnapshot = await _db
        .collection("Users")
        .where("email", isEqualTo: email)
        .limit(1)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      await querySnapshot.docs.first.reference.delete();
      return "User-Daten gelöscht";
    } else {
      return "Kein passender User gefunden";
    }
  }

  @override
  Future<bool> checkUser(String email) async {
    final querySnapshot = await _db
        .collection("Users")
        .where("email", isEqualTo: email)
        .limit(1)
        .get();
    return querySnapshot.docs.isNotEmpty;
  }

  @override
  Future<String> getEmail() {
    // TODO: implement getEmail
    throw UnimplementedError();
  }
}

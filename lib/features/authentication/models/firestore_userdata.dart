class FirestoreUserdata {
  final String emailUser;
  final String nameUser;
  final String passwordUser;

  FirestoreUserdata({
    required this.emailUser,
    required this.nameUser,
    required this.passwordUser,
  });

  factory FirestoreUserdata.fromMap(Map<String, dynamic> map) {
    return FirestoreUserdata(
        emailUser: "emailUser",
        nameUser: "nameUser",
        passwordUser: "passwordUser");
  }
}

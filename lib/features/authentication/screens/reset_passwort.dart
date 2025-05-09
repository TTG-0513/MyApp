import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/authentication/data/auth_repo.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_userdata.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_icons.dart';

class ResetPasswort extends StatelessWidget {
  const ResetPasswort(
      {super.key, this.authRepository, required this.firestorUserAbstract});

  final AuthRepository? authRepository;
  final FirestoreUserAbstract firestorUserAbstract;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MyThemeZwei(),
        Column(
          children: [
            SizedBox(
              height: 60,
            ),
            TopBarIcons(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("assets/images/AvatarImage.png"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    style: GoogleFonts.manrope(
                        color: Color(0xFFFFFFFF), fontSize: 15),
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    style: GoogleFonts.manrope(
                        color: Color(0xFFFFFFFF), fontSize: 15),
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    style: GoogleFonts.manrope(
                        color: Color(0xFFFFFFFF), fontSize: 15),
                    decoration: InputDecoration(
                      labelText: "Email Wiederholen",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LandingScreen(
                                    authRepository: authRepository!,
                                    firestoreUserAbstract: firestorUserAbstract,
                                  )));
                        },
                        child: Text("Zurücksetzen"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

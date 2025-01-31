import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/games_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MyThemeZwei(),
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
                child: Image.asset("assets/images/ProfilBild.png"),
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
                      labelText: "Passwort",
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
                      labelText: "Passwort Wiederholen",
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
                              builder: (context) => GamesScreen()));
                        },
                        child: Text("Regestrieren"))
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

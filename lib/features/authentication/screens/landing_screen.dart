import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_eins.dart';
import 'package:ldj_app/features/authentication/screens/reset_passwort.dart';
import 'package:ldj_app/features/authentication/screens/signup_screen.dart';
import 'package:ldj_app/features/authentication/widgets/name_field.dart';
import 'package:ldj_app/features/authentication/widgets/passwort_field.dart';
import 'package:ldj_app/features/game_selection/screens/games_guest.dart';
import 'package:ldj_app/features/game_selection/screens/games_screen.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MyThemeEins(),
        Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 70,
                  width: 60,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen()),
                      );
                    },
                    icon: Icon(Icons.settings),
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
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
                child: Image.asset("assets/images/AppLogo.png"),
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
                child: NameField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PasswortField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    FilledButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => GamesScreen(),
                          ),
                        );
                      },
                      child: Text("Anmelden"),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ResetPasswort(),
                            ),
                          );
                        },
                        child: Text("Passwort Vergessen")),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FilledButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => GamesGuestScreen(),
                              ),
                            );
                          },
                          child: Text("Gast Anmeldung"),
                        ),
                        FilledButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text("Regestrieren"),
                        )
                      ],
                    )
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

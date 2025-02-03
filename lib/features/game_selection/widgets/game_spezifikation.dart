import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/authentication/repositories/dart_counter_test.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class GameSpezifikation extends StatelessWidget {
  const GameSpezifikation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
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
              Padding(padding: EdgeInsets.all(2)),
              Container(
                height: 50,
                width: 400,
                color: Color.fromARGB(175, 183, 105, 105),
                child: Text(
                  "User Name",
                  style: GoogleFonts.manrope(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 600),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 5.0,
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFFFFFFF),
                      ),
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DartCounterTest()),
                        );
                      },
                      child: Text(
                        "Good Dart",
                        style: GoogleFonts.manrope(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFEE0E47),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

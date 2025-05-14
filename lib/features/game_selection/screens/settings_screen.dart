import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/repositories/setting_beispiel.dart';
import 'package:ldj_app/features/game_selection/screens/language_screen.dart';
import 'package:ldj_app/features/game_selection/widgets/system__ton__slider.dart';
import 'package:ldj_app/features/game_selection/widgets/system_sound__slider.dart';
import 'package:ldj_app/features/game_selection/widgets/ton__slider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        MyThemeZwei(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            Container(
              height: 40,
              width: 380,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LanguageScreen(),
                    ),
                  );
                },
                child: Text(
                  "Comming Soon",
                  style: GoogleFonts.manrope(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
            Container(
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
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF000000),
                    Color(0xFF000000),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              height: 40,
              width: 380,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LanguageScreen(),
                    ),
                  );
                },
                child: Text(
                  "Sprachen",
                  style: GoogleFonts.manrope(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

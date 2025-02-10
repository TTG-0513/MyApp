import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_icons.dart';

class SpezialGames extends StatelessWidget {
  const SpezialGames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TopBarIcons(),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 30,
                    width: 350,
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
                          Color(0xFFEE0E47),
                          Color(0xFF000000)
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      " 501",
                      style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 30,
                    width: 350,
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
                          Color(0xFFEE0E47),
                          Color(0xFF000000)
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      " Cricket",
                      style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 30,
                    width: 350,
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
                          Color(0xFFEE0E47),
                          Color(0xFF000000)
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      " Shanghai",
                      style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 30,
                    width: 350,
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
                          Color(0xFFEE0E47),
                          Color(0xFF000000)
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      " Round The World",
                      style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

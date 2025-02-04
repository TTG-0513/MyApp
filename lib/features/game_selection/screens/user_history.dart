import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class UserHistory extends StatelessWidget {
  const UserHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          Column(
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
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    height: 200,
                    width: 200,
                    child: Center(
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/images/AppLogo.png"))),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Column(
                    children: [
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
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        height: 50,
                        width: 380,
                        child: Text(
                          "Dart Legend",
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      Text(
                        "Legend.dart@mail.com",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                  Container(
                    height: 460,
                    width: 380,
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
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rang",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                    "assets/images/ThreeSilverDart.png"))
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Spiele",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "122",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Beste Runde",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Runden Durchschnitt",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "12",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "First 3 Darts",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "98",
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

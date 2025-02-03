import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class DartCounterTest extends StatelessWidget {
  const DartCounterTest({super.key});

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
              Container(
                alignment: Alignment.center,
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    color: Color(0xFFFFFFFF)),
                child: Text(
                  "381",
                  style: GoogleFonts.manrope(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 60,
                width: 360,
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
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Text(
                  "120",
                  style: GoogleFonts.manrope(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEE0E47)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 360,
                width: 360,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "1",
                              style: GoogleFonts.manrope(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFEE0E47),
                              ),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "2",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "3",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "false",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "4",
                              style: GoogleFonts.manrope(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFEE0E47),
                              ),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "5",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "6",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Double",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "7",
                              style: GoogleFonts.manrope(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFEE0E47),
                              ),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "8",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "9",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Triple",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "<",
                              style: GoogleFonts.manrope(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFEE0E47),
                              ),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "0",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "25",
                                style: GoogleFonts.manrope(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
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
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "+",
                                style: GoogleFonts.manrope(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE0E47),
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

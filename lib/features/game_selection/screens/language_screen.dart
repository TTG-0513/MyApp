import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.start,
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
                padding: EdgeInsets.fromLTRB(8, 0, 0, 2),
                alignment: Alignment.topLeft,
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
                height: 50,
                width: 350,
                child: Text(
                  "Comming Soon",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFFE04700)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 2),
                alignment: Alignment.topLeft,
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
                height: 35,
                width: 350,
                child: Text(
                  "English",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
              Padding(padding: EdgeInsets.all(3)),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 2),
                alignment: Alignment.topLeft,
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
                height: 35,
                width: 350,
                child: Text(
                  "Germany",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
              Padding(padding: EdgeInsets.all(3)),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 2),
                alignment: Alignment.topLeft,
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
                height: 35,
                width: 350,
                child: Text(
                  "Holländisch",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
              Padding(padding: EdgeInsets.all(3)),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 2),
                alignment: Alignment.topLeft,
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
                height: 35,
                width: 350,
                child: Text(
                  "Espana",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

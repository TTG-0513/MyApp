import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/Features/my_theme_eins.dart';

void main() {
  runApp(const StartScreen());
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          MyThemeEins(),
          Positioned(
            top: 100,
            left: 80,
            child: SizedBox(
              height: 250,
              width: 250,
              child: Image.asset("assets/images/app_logo.png"),
            ),
          ),
          Positioned(
              top: 460,
              left: 80,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        textAlign: TextAlign.start,
                        "Pseudonym",
                        style: GoogleFonts.manrope(fontSize: 12)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: Colors.amber,
                      ),
                      width: 260,
                      height: 60,
                    ),
                    Text(
                      "Passwort",
                      style: GoogleFonts.manrope(fontSize: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.amber,
                      ),
                      width: 260,
                      height: 60,
                    ),
                    SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.amber,
                      ),
                      width: 160,
                      height: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Paswort Vergessen",
                      style: GoogleFonts.manrope(fontSize: 12),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

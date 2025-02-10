import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/models/kleiner_rechner/dart_rechner_k1.dart';
import 'package:ldj_app/features/game_selection/models/kleiner_rechner/dart_rechner_k2.dart';
import 'package:ldj_app/features/game_selection/models/kleiner_rechner/dart_rechner_k3.dart';
import 'package:ldj_app/features/game_selection/models/kleiner_rechner/dart_rechner_k4.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_dart2.dart';

class MyDartRechnerKlein extends StatelessWidget {
  const MyDartRechnerKlein({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        TopBarDart2(),
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
              DartRechnerK1(),
              DartRechnerK2(),
              DartRechnerK3(),
              DartRechnerK4()
            ],
          ),
        )
      ],
    );
  }
}

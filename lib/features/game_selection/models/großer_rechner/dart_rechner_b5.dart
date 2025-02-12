import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class DartRechnerB5 extends StatelessWidget {
  const DartRechnerB5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTastenKlein(
          height: 55,
          width: 35,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "<",
              style: GoogleFonts.manrope(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEE0E47),
              ),
            ),
          ),
        ),
        MyTastenKlein(
          height: 55,
          width: 115,
          child: TextButton(
              onPressed: () {},
              child: Text(
                "double",
                style: GoogleFonts.manrope(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEE0E47),
                ),
              )),
        ),
        MyTastenKlein(
          height: 55,
          width: 92,
          child: TextButton(
              onPressed: () {},
              child: Text(
                "triple",
                style: GoogleFonts.manrope(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEE0E47),
                ),
              )),
        ),
        MyTastenKlein(
          height: 55,
          width: 86,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "false",
              style: GoogleFonts.manrope(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEE0E47),
              ),
            ),
          ),
        ),
        MyTastenKlein(
          height: 55,
          width: 56,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "25",
              style: GoogleFonts.manrope(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEE0E47),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

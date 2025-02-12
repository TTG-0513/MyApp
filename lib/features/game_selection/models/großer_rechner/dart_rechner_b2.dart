import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class DartRechnerB2 extends StatelessWidget {
  const DartRechnerB2({
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
          width: 65,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "6",
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
          width: 65,
          child: TextButton(
              onPressed: () {},
              child: Text(
                "7",
                style: GoogleFonts.manrope(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEE0E47),
                ),
              )),
        ),
        MyTastenKlein(
          height: 55,
          width: 65,
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
        MyTastenKlein(
          height: 55,
          width: 65,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "9",
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
          width: 65,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "10",
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

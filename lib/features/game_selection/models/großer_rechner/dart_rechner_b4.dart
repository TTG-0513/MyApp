import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class DartRechnerB4 extends StatelessWidget {
  const DartRechnerB4({
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
              "16",
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
                "17",
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
                "18",
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
              "19",
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
              "20",
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

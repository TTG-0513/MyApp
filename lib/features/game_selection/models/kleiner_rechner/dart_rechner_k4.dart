import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class DartRechnerK4 extends StatelessWidget {
  const DartRechnerK4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTastenKlein(
          height: 70,
          width: 70,
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
        MyTastenKlein(
          height: 60,
          width: 65,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "0",
              style: GoogleFonts.manrope(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEE0E47),
              ),
            ),
          ),
        ),
        MyTastenKlein(
          height: 60,
          width: 65,
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
        MyTastenKlein(
          height: 70,
          width: 70,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "+",
              style: GoogleFonts.manrope(
                fontSize: 35,
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

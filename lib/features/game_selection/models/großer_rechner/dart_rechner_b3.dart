import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DartRechnerB3 extends StatelessWidget {
  const DartRechnerB3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                "11",
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
                "12",
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
              "13",
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
                "14",
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
      ],
    );
  }
}

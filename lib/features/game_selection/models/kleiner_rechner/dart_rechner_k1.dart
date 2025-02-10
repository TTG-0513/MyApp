import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DartRechnerK1 extends StatelessWidget {
  const DartRechnerK1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            ),
          ),
        ),
      ],
    );
  }
}

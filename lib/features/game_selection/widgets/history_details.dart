import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryDetails extends StatelessWidget {
  const HistoryDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: 380,
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
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rang",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
              SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/ThreeSilverDart.png"))
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Spiele",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "122",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Beste Runde",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "10",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Runden Durchschnitt",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "12",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "First 3 Darts",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "98",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

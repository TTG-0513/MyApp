import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/authentication/repositories/dart_counter_test.dart';

class ButtonWhite1 extends StatelessWidget {
  const ButtonWhite1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 0),
            spreadRadius: 1,
            blurRadius: 5.0,
            color: Color.fromARGB(255, 230, 5, 5),
          ),
        ],
        border: Border.all(
          width: 1,
          color: Color(0xFFFFFFFF),
        ),
        color: Color(0xFF000000),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DartCounterTest()),
          );
        },
        child: Text(
          "Good Dart",
          style: GoogleFonts.manrope(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(242, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

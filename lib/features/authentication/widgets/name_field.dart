import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 200,
      child: TextFormField(
        style: GoogleFonts.manrope(color: Color(0xFFFFFFFF), fontSize: 15),
        decoration: InputDecoration(
          labelText: "Name",
        ),
      ),
    );
  }
}

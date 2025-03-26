import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

Widget dartTasten(var buttonText) {
  return Expanded(
    child: MyTastenKlein(
        height: 55,
        width: 65,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Pause",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEE0E47),
            ),
          ),
        )),
  );
}

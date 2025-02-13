import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

class LightDarkSlider extends StatefulWidget {
  const LightDarkSlider({super.key});

  @override
  State<LightDarkSlider> createState() => _SliderButtonState();
}

class _SliderButtonState extends State<LightDarkSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 80,
            width: 250,
            color: Color(0xFF000000),
            child: SliderButton(
              height: 90,
              action: () async {
                return Future.delayed(const Duration(seconds: 1), () {
                  return false;
                });
              },
              label: Text(
                "Dark",
                style: GoogleFonts.manrope(fontSize: 17),
              ),
              icon: Icon(Icons.sunny,
                  color: Color(0xFF000000),
                  size: 30,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      offset: Offset(2, 0),
                      color: Color(0xFFFFFFFF),
                    )
                  ]),
              buttonColor: Color(0xFFEE047E),
              highlightedColor: Color(0xFFFFFFFF),
              backgroundColor: Color(0xFF000000),
              boxShadow: BoxShadow(
                  color: Color(0xFFFFFFFF),
                  offset: const Offset(2, 0),
                  blurRadius: 10,
                  spreadRadius: 5),
            )),
      ),
    );
  }
}

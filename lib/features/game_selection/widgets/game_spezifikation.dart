import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/widgets/button_white1.dart';
import 'package:ldj_app/features/game_selection/widgets/dropdowns/dropdown_in.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_icons.dart';

class GameSpezifikation extends StatelessWidget {
  const GameSpezifikation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              TopBarIcons(),
              Padding(padding: EdgeInsets.all(2)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 25,
                    width: 400,
                    color: Color.fromARGB(175, 183, 105, 105),
                    child: Text(
                      "Dart Legend",
                      style: GoogleFonts.manrope(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 400,
                    color: Color.fromARGB(175, 183, 105, 105),
                    child: Text(
                      "Legend-dart@mail.com",
                      style: GoogleFonts.manrope(
                          color: Color(0xFFFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  DropdownPoints(),
                  SizedBox(
                    height: 150,
                  ),
                  DropdownIn(),
                  SizedBox(
                    height: 150,
                  ),
                  DropdownOut(),
                ],
              ),
              SizedBox(
                height: 170,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ButtonWhite1(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

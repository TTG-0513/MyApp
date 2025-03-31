import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/authentication/data/mock_database.dart';
import 'package:ldj_app/features/authentication/data/user.mock.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/screens/reset_passwort.dart';
import 'package:ldj_app/features/authentication/data/login_repository.dart';

import 'package:ldj_app/features/game_selection/widgets/history_details.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_icons.dart';
import 'package:ldj_app/main.dart';

class UserHistoryScreen extends StatelessWidget {
  const UserHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TopBarIcons(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    height: 200,
                    width: 200,
                    child: Center(
                        child: SizedBox(
                            height: 200,
                            width: 200,
                            child:
                                Image.asset("assets/images/AvatarImage.png"))),
                  ),
                  Container(
                    alignment: Alignment.center,
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
                    height: 35,
                    width: 150,
                    child: TextButton(
                        child: Center(
                          child: Text(
                            "Account löschen",
                            style: GoogleFonts.manrope(
                                fontSize: 15, color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResetPasswort(),
                          ));
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Column(
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
                        height: 50,
                        width: 380,
                        child: Text(
                          "Dart Legend",
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      Text(
                        "Legend.dart@mail.com",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                  HistoryDetails(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/widgets/game_spezifikation.dart';
import 'package:ldj_app/shared/screens/tips_tricks.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          MyThemeZwei(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_circle_left_outlined),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 60,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => GamesScreen()),
                        );
                      },
                      icon: Icon(Icons.settings),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 220,
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
                    width: 3,
                    color: Color(0xFFFFFFFF),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF000000),
                      Color(0xFF000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameSpezifikation(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Spiel",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 220,
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
                    width: 3,
                    color: Color(0xFFFFFFFF),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF000000),
                      Color(0xFF000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameSpezifikation(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Spezial Spiele",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 220,
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
                    width: 3,
                    color: Color(0xFFFFFFFF),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF000000),
                      Color(0xFF000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameSpezifikation(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "History",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 220,
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
                    width: 3,
                    color: Color(0xFFFFFFFF),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF000000),
                      Color(0xFF000000),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tipps(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Tipps",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

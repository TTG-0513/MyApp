import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class UserHistory extends StatelessWidget {
  const UserHistory({super.key});

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
                      icon: Icon(Icons.arrow_back),
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
                              builder: (context) => SettingsScreen()),
                        );
                      },
                      icon: Icon(Icons.settings),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      height: 200,
                      width: 200,
                      child: Text("Hallo")),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

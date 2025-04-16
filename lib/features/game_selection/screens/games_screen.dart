import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/authentication/data/auth_repo.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_user_repo.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_userdata.dart';
import 'package:ldj_app/features/authentication/data/login_repository.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';
import 'package:ldj_app/features/game_selection/screens/special_games_screen.dart';
import 'package:ldj_app/features/game_selection/screens/user_history_screen.dart';
import 'package:ldj_app/features/game_selection/widgets/game_spezifikation.dart';
import 'package:ldj_app/features/game_selection/widgets/my_container.dart';
import 'package:ldj_app/shared/screens/tips_tricks.dart';

class GamesScreen extends StatelessWidget {
  GamesScreen(
      {super.key,
      required this.loginRepository,
      required this.authRepository,
      required this.firestoreUserAbstract});
  final LoginRepository? loginRepository;
  final AuthRepository authRepository;
  final FirestoreUserAbstract firestoreUserAbstract;

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
              SizedBox(
                height: 20,
              ),
              MyContainer(
                  height: 60,
                  width: 220,
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
                      )))),
              Padding(padding: EdgeInsets.all(5)),
              MyContainer(
                  width: 220,
                  height: 60,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SpecialGamesScreen(),
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
                      )))),
              Padding(padding: EdgeInsets.all(5)),
              MyContainer(
                  width: 220,
                  height: 60,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserHistoryScreen(
                              firestoreUserAbstract: firestoreUserAbstract,
                              authRepository: authRepository,
                            ),
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
                      )))),
              Padding(padding: EdgeInsets.all(5)),
              MyContainer(
                  width: 220,
                  height: 60,
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
                      ))))
            ],
          ),
        ],
      ),
    );
  }
}

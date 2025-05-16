import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_eins.dart';
import 'package:ldj_app/features/authentication/data/auth_repo.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_userdata.dart';
import 'package:ldj_app/features/authentication/screens/reset_passwort.dart';
import 'package:ldj_app/features/authentication/screens/signup_screen.dart';
import 'package:ldj_app/features/authentication/data/login_repository.dart';
import 'package:ldj_app/features/game_selection/screens/games_guest_screen.dart';
import 'package:ldj_app/features/game_selection/screens/games_screen.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';
import 'package:ldj_app/features/game_selection/widgets/my_container2.dart';

class LandingScreen extends StatefulWidget {
  final AuthRepository authRepository;
  final LoginRepository? loginRepository;
  final FirestoreUserAbstract firestoreUserAbstract;
  LandingScreen({
    super.key,
    required this.authRepository,
    this.loginRepository,
    required this.firestoreUserAbstract,
  });

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwortController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  bool loading = false;

  String falseMessage = "";

  @override //immer die Controller Disposen also löschen/bereinigen/säubern
  void dispose() {
    emailController.dispose();
    passwortController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MyThemeEins(),
        Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("assets/images/AppLogo.png"),
              ),
              Padding(
                padding: EdgeInsets.all(130),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyContainer2(
                      height: 100,
                      width: 100,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => GamesScreen(
                                  authRepository: widget.authRepository,
                                  loginRepository: null,
                                  firestoreUserAbstract:
                                      widget.firestoreUserAbstract,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "Start",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(242, 255, 255, 255),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        /*Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 250,
                          child: TextFormField(
                            controller: emailController,
                            style: GoogleFonts.manrope(
                                color: Color(0xFFFFFFFF), fontSize: 15),
                            decoration: InputDecoration(
                              labelText: "Email",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 250,
                          child: TextFormField(
                            style: GoogleFonts.manrope(
                                color: Color(0xFFFFFFFF), fontSize: 15),
                            obscureText: _isObscure,
                            controller: passwortController,
                            decoration: InputDecoration(
                              labelText: 'Passwort',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    MyContainer2(
                      child: TextButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            widget.authRepository.signInWithEmailPassword(
                                emailController.text, passwortController.text);
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => GamesScreen(
                                  authRepository: widget.authRepository,
                                  loginRepository: null,
                                  firestoreUserAbstract:
                                      widget.firestoreUserAbstract,
                                ),
                              ),
                            );
                          } else {
                            setState(() {
                              falseMessage =
                                  "Gebe deine Daten bitte noch mal ein";
                            });
                          }
                        },
                        child: Text(
                          "Anmelden",
                          style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(242, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    if (loading)
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    Text(
                      falseMessage,
                      style: GoogleFonts.manrope(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => ResetPasswort(
                              firestorUserAbstract:
                                  widget.firestoreUserAbstract,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Passwort Vergessen",
                        style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(242, 255, 255, 255),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyContainer2(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => GamesGuestScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Gast Anmeldung",
                              style: GoogleFonts.manrope(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(242, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        MyContainer2(
                            child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(
                                  authRepository: widget.authRepository,
                                  firestoreUserAbstract:
                                      widget.firestoreUserAbstract,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "Regestrierung",
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(242, 255, 255, 255),
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),*/
      ]),
    );
  }

  Future<bool> mockCompleted() async {
    setState(() {
      loading = true;
      falseMessage = "";
    });

    // wir simulieren eine wartezeit von X sekunden, in der realität wäre das eine server anfrage
    final res = await mockRequest().catchError((error) {
      // e ist unsere exception die wir bekommen, in dem fall: timeoutexception
      print('exception: $error');
      return true;
    });

    setState(() {
      loading = false;
    });

    return res;
  }

  Future<bool> mockRequest() {
    // später tauschen wir das gegen einen echten server request aus
    return Future.delayed(
      Duration(seconds: 2),
      () => true,
    ).timeout(
      Duration(seconds: 5),
    );
  }
}

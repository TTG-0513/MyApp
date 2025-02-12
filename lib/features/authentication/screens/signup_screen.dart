import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/games_screen.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_icons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwortController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwortRepaetController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override //immer die Controller Disposen also löschen/bereinigen/säubern
  void dispose() {
    nameController.dispose();
    passwortRepaetController.dispose();
    emailController.dispose();
    passwortController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MyThemeZwei(),
        Column(
          children: [
            SizedBox(
              height: 60,
            ),
            TopBarIcons(),
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
                child: Image.asset("assets/images/AvatarImage.png"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          controller: nameController,
                          style: GoogleFonts.manrope(
                              color: Color(0xFFFFFFFF), fontSize: 15),
                          decoration: InputDecoration(
                            labelText: "Name",
                          ),
                          validator: (value) {
                            if (value == null || value.length < 5) {
                              return 'Der Name muss länger als 6 Buchstaben sein ';
                            }
                            return null;
                          },
                        ),
                      ),
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
                            validator: (value) {
                              final expression = RegExp("TheGradientPilot");
                              if (expression.hasMatch(value ?? '')) {
                                // value entspricht unserem regex pattern -> email ist valide!
                                return null;
                              } else {
                                // value entspricht nicht unserem regex pattern -> keine valide email!
                                return 'Keine echte Email';
                              }
                            },
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
                            validator: (value) {
                              return (value?.length ?? 0) > 12
                                  ? null
                                  : 'Das Passwort muss mindestens 12 Zeichen haben ';
                            },
                            decoration: InputDecoration(
                              labelText: 'Passwort',
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
                            validator: (value) {
                              return (value?.length ?? 0) > 12
                                  ? null
                                  : 'Das Passwort muss mindestens 12 Zeichen haben ';
                            },
                            decoration: InputDecoration(
                              labelText: 'Passwort Wiederholen',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            //Form ist valide
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => GamesScreen(),
                              ),
                            );
                          } else {
                            //form ist nicht valide
                          }
                        },
                        child: Text("Regestrieren"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

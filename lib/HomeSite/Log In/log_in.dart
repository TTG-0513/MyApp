import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Einlogen",
            style: TextTheme.of(context)
                .headlineLarge //? hinter dem headlineLarge macht es  nullable (kann muss aber nicht)
                ?.copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Name"),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            obscureText:
                true, // das mach das Passwort sichtbar oder nicht ObscureText
            decoration: InputDecoration(
                labelText: "passwort",
                suffixIcon: Icon(Icons
                    .visibility_off)), // Auge zum sicht bar machen des passwort
          ),
          FilledButton(onPressed: () {}, child: Text("Log In"))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_dart2.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class DartScoreScreen1 extends StatefulWidget {
  int currentScore;

  DartScoreScreen1(this.currentScore);

  @override
  _DartScoreScreen1State createState() => _DartScoreScreen1State();
}

class _DartScoreScreen1State extends State<DartScoreScreen1> {
  int startScore = 101;
  late int currentScore;
  String inputString = '';
  String message = '';

  @override
  void initState() {
    currentScore = widget.currentScore;
    super.initState();
  }

  void calculateScore(String input) {
    setState(() {
      message = '';
      int pointsToSubtract;
      // Überprüfe und parse den Darts-Eingang
      pointsToSubtract = _parseDartsInput(input);
      if (pointsToSubtract >= 0) {
        currentScore -= pointsToSubtract;
        if (currentScore < 0) {
          message = 'False';
          currentScore +=
              pointsToSubtract; // Rücksetzen auf den vorherigen Wert
        } else if (currentScore == 0) {
          message = 'Glückwunsch, du hast gewonnen!';
        }
      } else {
        message = 'Ungültige Eingabe!';
      }
      inputString = ''; // Eingabefeld zurücksetzen
    });
  }

  int _parseDartsInput(String input) {
    int totalPoints = 0;
    List<String> darts = input.split(",");
    for (String dart in darts) {
      dart = dart.trim();
      int multiplier = 1;
      int? score;
      if (dart.startsWith('double ')) {
        multiplier = 2;
        score = int.tryParse(dart.substring(7));
      } else if (dart.startsWith('triple ')) {
        multiplier = 3;
        score = int.tryParse(dart.substring(7));
      } else {
        score = int.tryParse(dart);
      }
      if (score != null && score >= 1 && score <= 180) {
        totalPoints += score * multiplier;
      } else {
        return -1; // Ungültige Eingabe
      }
    }
    return totalPoints;
  }

  void onButtonClick(String value) {
    setState(() {
      if (value == "C") {
        inputString = ''; // Clear the input
      } else if (value == "=") {
        calculateScore(inputString);
      } else {
        inputString += value; // Append the value to input
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 40,
      ),
      TopBarDart2(),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  color: Color(0xFFFFFFFF)),
              child: Text(
                "$currentScore",
                style: GoogleFonts.manrope(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000)),
              ),
            ),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.topCenter,
              height: 60,
              width: 360,
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
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text(
                "$inputString",
                overflow: TextOverflow.clip,
                maxLines: 1,
                style: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEE0E47)),
              ),
            ),
            Text(
                style: GoogleFonts.manrope(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF)),
                message),
            SizedBox(height: 5),
            Container(
              height: 360,
              width: 360,
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
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(7, 8, 5, 1)),
                  Row(
                    children: [
                      counterButton("1"),
                      counterButton("2"),
                      counterButton("3"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(7, 3, 5, 7)),
                  Row(
                    children: [
                      counterButton("4"),
                      counterButton("5"),
                      counterButton("6"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(7, 3, 5, 7)),
                  Row(
                    children: [
                      counterButton("7"),
                      counterButton("8"),
                      counterButton("9"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 7)),
                  Row(
                    children: [
                      counterButton("="),
                      counterButton("0"),
                      counterButton("C"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  Widget counterButton(var buttonText) {
    return Expanded(
      child: MyTastenKlein(
        height: 75,
        width: 65,
        child: TextButton(
          onPressed: () => onButtonClick(buttonText),
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.all(13.0)),
            backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF000000)),
            textStyle: WidgetStateProperty.all(
              const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          child: Text(
            buttonText,
            style: GoogleFonts.manrope(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEE0E47),
            ),
          ),
        ),
      ),
    );
  }
}

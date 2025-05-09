import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_dart1.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class DartScoreScreen2 extends StatefulWidget {
  int currentScore;
  String startPoints;
  String endPoints;

  DartScoreScreen2(this.currentScore, this.startPoints, this.endPoints);

  @override
  _DartScoreScreen2State createState() => _DartScoreScreen2State();
}

class _DartScoreScreen2State extends State<DartScoreScreen2> {
  String inputString = '';
  String message = '';
  late int currentScore;
  late String startPoints;
  late String endPoints;

  @override
  void initState() {
    currentScore = widget.currentScore;
    startPoints = widget.startPoints;
    endPoints = widget.endPoints;
    super.initState();
  }

  void calculateScore(String input) {
    setState(() {
      message = '';
      int pointsToSubtract;
      if (currentScore == widget.currentScore) {
        /*if (widget.startPoints == "Master") {
          if (!input.toLowerCase().startsWith("Double") &&
              !input.toLowerCase().startsWith("Triple")) {
            message = "False No";
          }
        }*/

        if (!input.toLowerCase().startsWith(startPoints.toLowerCase())) {
          message = "False";
          return;
        }
      }
      pointsToSubtract = _parseDartsInput(input);
      if (pointsToSubtract >= 0) {
        currentScore -= pointsToSubtract;
        if (currentScore < 0) {
          message = 'False';
          currentScore +=
              pointsToSubtract; // Rücksetzen auf den vorherigen Wert
        } else if (currentScore == 0) {
          if (!input.toLowerCase().startsWith(endPoints.toLowerCase())) {
            message =
                'False'; /*'Du musst mit einem ${widget.endPoints} aus werfen!'*/
            currentScore +=
                pointsToSubtract; // Rücksetzen auf den vorherigen Wert
          } else {
            message = 'Glückwunsch, du hast gewonnen!';
          }
        }
        inputString = ''; // Eingabefeld zurücksetzen
      }
    });
  }

  int _parseDartsInput(String input) {
    int totalPoints = 0;
    List<String> darts = input.split(",");
    for (String dart in darts) {
      dart = dart.trim();
      int multiplier = 1;
      int? score;
      if (dart.startsWith('Double ')) {
        multiplier = 2;
        score = int.tryParse(dart.substring(7));
      } else if (dart.startsWith('Triple ')) {
        multiplier = 3;
        score = int.tryParse(dart.substring(7));
      } else {
        score = int.tryParse(dart);
      }
      if (score != null && score >= 1 && score <= 25) {
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
        height: 35,
      ),
      TopBarDart1(),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 230,
              width: 230,
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
              height: 50,
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF)),
                message),
            SizedBox(height: 5),
            Container(
              height: 430,
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
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 1)),
                  Row(
                    children: [
                      counterButton("1"),
                      counterButton("2"),
                      counterButton("3"),
                      counterButton("4"),
                      counterButton("5"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 1)),
                  Row(
                    children: [
                      counterButton("6"),
                      counterButton("7"),
                      counterButton("8"),
                      counterButton("9"),
                      counterButton("10"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 1)),
                  Row(
                    children: [
                      counterButton("11"),
                      counterButton("12"),
                      counterButton("13"),
                      counterButton("14"),
                      counterButton("15"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 1)),
                  Row(
                    children: [
                      counterButton("16"),
                      counterButton("17"),
                      counterButton("18"),
                      counterButton("19"),
                      counterButton("20"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 1)),
                  Row(
                    children: [
                      counterButton("25"),
                      counterButton("="),
                      counterButton("C"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(1, 3, 5, 1)),
                  Row(
                    children: [
                      counterButton("Double "),
                      counterButton("Triple "),
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
        height: 65,
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

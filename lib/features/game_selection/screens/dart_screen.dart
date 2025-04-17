import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_dart2.dart';
import 'package:ldj_app/features/game_selection/widgets/my_tasten_klein.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  Map<String, String> operands = {
    "": "false",
    "sub": "-",
    "*3": "triple",
    "*2": "double",
    "equals": "=",
  };
  var output = "0";
  var valueOfOperation = 0.0;
  var firstValue = 0.0;
  var secondValue = 0.0;
  var operand = "";
  buttonPressed(String buttonText) {
    if (buttonText == "Clear") {
      valueOfOperation = 0.0;
      firstValue = 0.0;
      secondValue = 0.0;
      operand = "";
      //Wenn gleich gedrückt wird
    } else if (buttonText == operands["equals"]) {
      secondValue = double.parse(output);
      if (operand == operands["sub"]) {
        valueOfOperation = firstValue - secondValue;
      } else if (operand == operands["*3"]) {
        valueOfOperation = firstValue - secondValue - secondValue - secondValue;
      } else if (operand == operands["*2"]) {
        valueOfOperation = firstValue - secondValue - secondValue;
      }
      firstValue = 0.0;
      secondValue = 0.0;
      operand = "";
      //Wenn ein anderer Operand gedrückt wird
    } else if (operands.containsValue(buttonText)) {
      firstValue = double.parse(output);
      operand = buttonText;
      valueOfOperation = 0.0;
      //Wenn eine Zahl gedrückt wird
    } else {
      if (valueOfOperation == 0.0) {
        valueOfOperation = double.parse(buttonText);
      } else {
        var zahlensplit = valueOfOperation.toString().split(".");
        var ganzzahl = zahlensplit[0];
        var kommazahl = zahlensplit[1];
        valueOfOperation =
            double.parse(ganzzahl + buttonText + "." + kommazahl);
      }
    }
    setState(
      () {
        var valueOfOperationString = valueOfOperation.toString();
        var valueOfOperationSplit = valueOfOperationString.split(".");
        if (valueOfOperationSplit[1] == "0") {
          output = valueOfOperationSplit[0];
        } else {
          output = valueOfOperationString;
        }
      },
    );
  }

  Widget counterButton(var buttonText) {
    return Expanded(
      child: MyTastenKlein(
        height: 60,
        width: 65,
        child: TextButton(
          onPressed: () => buttonPressed(buttonText),
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.all(12.0)),
            backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF000000)),
            textStyle: WidgetStateProperty.all(
              const TextStyle(
                //backgroundColor: Colors.yellow,
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

  Widget counterButton2(var buttonText) {
    return Expanded(
      child: MyTastenKlein(
        height: 60,
        width: 65,
        child: TextButton(
          onPressed: () => buttonPressed(buttonText),
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.all(6.0)),
            backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF000000)),
            textStyle: WidgetStateProperty.all(
              const TextStyle(
                //backgroundColor: Colors.yellow,
                color: Colors.black,
              ),
            ),
          ),
          child: Text(
            buttonText,
            style: GoogleFonts.manrope(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEE0E47),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        TopBarDart2(),
        Container(
          alignment: Alignment.center,
          height: 280,
          width: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              color: Color(0xFFFFFFFF)),
          child: Text(
            output,
            style: GoogleFonts.manrope(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: <Widget>[
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
                  output,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEE0E47)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(5)),
                    Row(
                      children: <Widget>[
                        counterButton("1"),
                        counterButton("2"),
                        counterButton("3"),
                        counterButton2(operands["*2"]),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Row(
                      children: <Widget>[
                        counterButton("4"),
                        counterButton("5"),
                        counterButton("6"),
                        counterButton2(operands["*3"]),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Row(
                      children: <Widget>[
                        counterButton("7"),
                        counterButton("8"),
                        counterButton("9"),
                        counterButton(operands["sub"]),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Row(
                      children: <Widget>[
                        counterButton("0"),
                        counterButton2("Clear"),
                        counterButton(operands["equals"]),
                        counterButton2(operands[""]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

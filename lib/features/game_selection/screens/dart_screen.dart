import 'package:flutter/material.dart';

class DartScreen extends StatelessWidget {
  const DartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Counter(),
    );
  }
}

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
      if (operand == operands[""]) {
        valueOfOperation = firstValue + secondValue;
      } else if (operand == operands["sub"]) {
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
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(buttonText,
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const EdgeInsets.all(24.0)),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              //backgroundColor: Colors.yellow,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Good Dart"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
              child: Text(
                output,
                overflow: TextOverflow.clip,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    counterButton("7"),
                    counterButton("8"),
                    counterButton("9"),
                    counterButton(operands["*2"]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    counterButton("4"),
                    counterButton("5"),
                    counterButton("6"),
                    counterButton(operands["*3"]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    counterButton("1"),
                    counterButton("2"),
                    counterButton("3"),
                    counterButton(operands["sub"]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    counterButton("0"),
                    counterButton("Clear"),
                    counterButton(operands["equals"]),
                    counterButton(operands[""]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/widgets/dart_tasten.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_dart1.dart';

class MyDartRechnerGross extends StatefulWidget {
  const MyDartRechnerGross({
    super.key,
  });

  @override
  State<MyDartRechnerGross> createState() => _MyDartRechnerGrossState();
}

class _MyDartRechnerGrossState extends State<MyDartRechnerGross> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        TopBarDart1(),
        Container(
          alignment: Alignment.center,
          height: 280,
          width: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              color: Color(0xFFFFFFFF)),
          child: Text(
            "Pause",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 60,
          width: 390,
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
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 360,
            width: 390,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: <Widget>[
                  dartTasten("1"),
                  dartTasten("2"),
                  dartTasten("3"),
                  dartTasten("4"),
                  dartTasten("5"),
                ]),
                Row(
                  children: <Widget>[
                    dartTasten("6"),
                    dartTasten("7"),
                    dartTasten("8"),
                    dartTasten("9"),
                    dartTasten("10"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    dartTasten("11"),
                    dartTasten("12"),
                    dartTasten("13"),
                    dartTasten("14"),
                    dartTasten("15"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    dartTasten("16"),
                    dartTasten("17"),
                    dartTasten("18"),
                    dartTasten("19"),
                    dartTasten("20"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    dartTasten("<"),
                    dartTasten("double"),
                    dartTasten("triple"),
                    dartTasten("false"),
                    dartTasten("25"),
                  ],
                )
              ],
            ))
      ],
    );
  }
}

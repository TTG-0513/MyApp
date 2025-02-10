import 'package:flutter/material.dart';
import 'package:ldj_app/features/game_selection/widgets/game_spezifikation.dart';

class MyAppButton extends StatelessWidget {
  const MyAppButton({
    super.key,
    this.gestureDetector,
    this.onTap,
    this.child,
    this.text,
  });
  final GestureDetector? gestureDetector;
  final void Function()? onTap;
  final Widget? child;
  final Text? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 220,
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
          width: 3,
          color: Color(0xFFFFFFFF),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF000000),
            Color(0xFF000000),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    );
  }
}

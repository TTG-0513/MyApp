import 'package:flutter/material.dart';
import 'package:ldj_app/features/game_selection/repositories/setting_beispiel.dart';

class Sound_Slider extends StatelessWidget {
  const Sound_Slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: 50,
      width: 380,
      child: SliderExample(),
    );
  }
}

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, this.child, this.height, this.width});
  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
          width: 2,
          color: Color(0xFFFFFFFF),
        ),
        color: Color(0xFF000000),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF000000),
            Color(0xFF000000),
          ],
        ),
      ),
      child: child,
    );
  }
}

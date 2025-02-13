import 'package:flutter/material.dart';

class MyTastenKlein extends StatelessWidget {
  const MyTastenKlein({super.key, this.child, this.height, this.width});
  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
      child: child,
    );
  }
}

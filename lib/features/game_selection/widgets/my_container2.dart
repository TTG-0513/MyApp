import 'package:flutter/material.dart';

class MyContainer2 extends StatelessWidget {
  const MyContainer2({super.key, this.child, this.height, this.width});
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
            color: Color.fromARGB(255, 230, 5, 5),
          ),
        ],
        border: Border.all(
          width: 1,
          color: Color(0xFFFFFFFF),
        ),
        color: Color(0xFF000000),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: child,
    );
  }
}

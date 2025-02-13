import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameField extends StatefulWidget {
  const NameField({
    super.key,
  });

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    //print('Email is Clear');
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 250,
      child: TextFormField(
        controller: emailController,
        style: GoogleFonts.manrope(color: Color(0xFFFFFFFF), fontSize: 15),
        decoration: InputDecoration(
          labelText: "Name",
        ),
      ),
    );
  }
}

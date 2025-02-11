import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswortField extends StatefulWidget {
  const PasswortField({
    super.key,
  });

  @override
  State<PasswortField> createState() => _PasswortFieldState();
}

class _PasswortFieldState extends State<PasswortField> {
  final TextEditingController passwortController = TextEditingController();
  bool _isObscure = true;
  @override
  void dispose() {
    print('Passwort Clear');
    passwortController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 250,
      child: TextFormField(
        style: GoogleFonts.manrope(color: Color(0xFFFFFFFF), fontSize: 15),
        obscureText: _isObscure,
        controller: passwortController,
        decoration: InputDecoration(
          labelText: 'Passwort',
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownPoints extends StatefulWidget {
  const DropdownPoints({super.key});

  @override
  State<DropdownPoints> createState() => _DropdownPointsState();
}

class _DropdownPointsState extends State<DropdownPoints> {
  List<String> items = ["----", " 101", " 301", " 501", " 701", "1001"];
  String? selectedItem = "----";

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 10.0,
                  color: Color(0xFFEE0E47),
                ),
              ],
              border: Border.all(
                width: 1,
                color: Color(0xFFFFFFFF),
              ),
              color: Color(0xFF000000),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            height: 30,
            width: 70,
            child: DropdownButton<String>(
              iconEnabledColor: Color(0xFFEE0E47),
              dropdownColor: Color(0xFF000000),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item,
                            style: GoogleFonts.manrope(
                                fontSize: 20, color: Color(0xFFEE0E47))),
                      ))
                  .toList(),
              onChanged: (item) => setState(() => selectedItem = item),
            ),
          ),
        ],
      );
}

class DropdownIn extends StatefulWidget {
  const DropdownIn({super.key});

  @override
  State<DropdownIn> createState() => _DropdownMenueState();
}

class _DropdownMenueState extends State<DropdownIn> {
  List<String> items = ["----", "Single In", "Double In", "Master In"];
  String? selectedItem = "----";

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 10.0,
                  color: Color(0xFFEE0E47),
                ),
              ],
              border: Border.all(
                width: 1,
                color: Color(0xFFFFFFFF),
              ),
              color: Color(0xFF000000),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            height: 30,
            width: 120,
            child: DropdownButton<String>(
              iconEnabledColor: Color(0xFFEE0E47),
              dropdownColor: Color(0xFF000000),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item,
                            style: GoogleFonts.manrope(
                                fontSize: 20, color: Color(0xFFEE0E47))),
                      ))
                  .toList(),
              onChanged: (item) => setState(() => selectedItem = item),
            ),
          ),
        ],
      );
}

class DropdownOut extends StatefulWidget {
  const DropdownOut({super.key});

  @override
  State<DropdownOut> createState() => _DropdownOutState();
}

class _DropdownOutState extends State<DropdownOut> {
  List<String> items = ["----", "Single Out", "Double Out", "Master Out"];
  String? selectedItem = "----";

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 10.0,
                  color: Color(0xFFEE0E47),
                ),
              ],
              border: Border.all(
                width: 1,
                color: Color(0xFFFFFFFF),
              ),
              color: Color(0xFF000000),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            height: 30,
            width: 140,
            child: DropdownButton<String>(
              iconEnabledColor: Color(0xFFEE0E47),
              dropdownColor: Color(0xFF000000),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item,
                            style: GoogleFonts.manrope(
                                fontSize: 20, color: Color(0xFFEE0E47))),
                      ))
                  .toList(),
              onChanged: (item) => setState(() => selectedItem = item),
            ),
          ),
        ],
      );
}

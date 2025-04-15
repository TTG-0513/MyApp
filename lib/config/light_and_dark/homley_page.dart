import 'package:flutter/material.dart';
import 'package:ldj_app/config/light_and_dark/components/box.dart';
import 'package:ldj_app/config/light_and_dark/components/theme_provider.dart';
import 'package:ldj_app/config/light_and_dark/l_d_button.dart';
import 'package:provider/provider.dart';

class HomleyPage extends StatelessWidget {
  const HomleyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: LDButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
    //                        FilledButton(
      //                      onPressed: () {},
        //                    child: Text(
          //                      style: TextStyle(
            //                        fontSize: 15, color: Color(0xFFFFFFFF)),
              //                  "Toggel"))
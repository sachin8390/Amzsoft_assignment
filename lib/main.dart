import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_module/ui_design/bottom_navigation/bottom_navigation_page.dart';

import 'util/size_config.dart';

void main() {
  print("App is working");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
    theme: ThemeData(
      textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: LayoutBuilder(builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          if (constraints.maxWidth == 0 || constraints.maxHeight == 0) {
            return const SizedBox();
          } else {
            SizeConfig.init(constraints, orientation);
          }
          return const BottomNavigationTabPage();
        });
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:millsettingapp/screens/calculation_screen.dart';
import 'package:millsettingapp/shared/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white.withAlpha(0)));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
        // brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: themecolor,
        scaffoldBackgroundColor: themecolor_light1,
        appBarTheme: AppBarTheme(
          backgroundColor: themecolor_light1,
        ),
      ),
      home: CalculationScreen(),
    );
  }
}

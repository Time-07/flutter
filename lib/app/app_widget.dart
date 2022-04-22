import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trans',
      theme: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xFFECDBF4),
                secondary: const Color(0xFF744D83),
                tertiary: const Color(0xFFFCF1F3),
                outline: const Color(0xFFF5A9B8),
                inverseSurface: const Color(0xFF38829F),
                inversePrimary: const Color(0xFFE8F6FB),
                primaryVariant: const Color(0xFF111111),
                secondaryVariant: const Color(0xFFDFB0F2),
              ),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'Fredoka',
                fontSize: 40.0,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            headline2: TextStyle(
                fontFamily: 'Fredoka',
                fontSize: 36.0,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            headline3: TextStyle(
                fontFamily: 'Fredoka',
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            headline5: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
            headline6: TextStyle(
              fontFamily: 'Inter',
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            caption: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            bodyText1: TextStyle(
              fontFamily: 'Inter',
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
            labelMedium: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          )),
      initialRoute: '/',
    ).modular();
  }
}

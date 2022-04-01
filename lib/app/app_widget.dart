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
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xFFEC0344),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0xFFEC0344),
              secondary: Colors.white,
            ),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
    ).modular();
  }
}
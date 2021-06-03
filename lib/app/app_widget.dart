import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex Flutter',
      theme: ThemeData(
        fontFamily: "Comfortaa",
        primarySwatch: Colors.red,
      ),
      initialRoute: "/",
      ).modular();
  }
}
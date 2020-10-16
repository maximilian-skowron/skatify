import 'package:flutter/material.dart';
import 'package:skatify/views/fallbackview.dart';
import 'package:skatify/views/gameconfigview.dart';
import 'package:skatify/views/homeview.dart';
import 'package:skatify/views/resultroundview.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case Routes.GameRoute:
      return MaterialPageRoute(
          builder: (context) => GameConfigView(
                playerCount: settings.arguments,
              ));
    case Routes.ResultRoundRoute:
      return MaterialPageRoute(builder: (context) => ResultRoundView());
    default:
      return MaterialPageRoute(builder: (context) => FallbackView());
  }
}

class Routes {
  Routes._();

  static const String HomeRoute = "/home";
  static const String GameRoute = "/groupgame";
  static const String TournamentRoute = "/tournament";
  static const String ResultRoundRoute = "/resultround";
  static const String GameModeConfigRoute = "/gamemodeconfig";
}

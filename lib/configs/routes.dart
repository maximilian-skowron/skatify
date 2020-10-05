import 'package:flutter/material.dart';
import 'package:skatify/views/homeview.dart';

const String HomeRoute = "/";

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    default:
      break;
  }
}

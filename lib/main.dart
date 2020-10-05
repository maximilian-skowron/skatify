import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'configs/routes.dart' as route;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: route.onGenerateRoute,
      initialRoute: route.HomeRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skatify/viewmodel/gameconfigprovider.dart';
import 'configs/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GameConfigProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: onGenerateRoute,
        initialRoute: '/home',
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skatify/configs/service_locator.dart';
import 'package:skatify/services/game_service.dart';
import 'package:skatify/viewmodel/gameconfigprovider.dart';
import 'package:skatify/viewmodel/roundresultprovider.dart';
import 'configs/routes.dart';

// entrypoint for the app
void main() {
  // setup and initialize locator bevore app starts to prevent calls before init
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => GameConfigProvider(getIt.get<GameService>())),
        ChangeNotifierProvider(
            create: (_) => RoundResultProvider(getIt.get<GameService>())),
      ],
      child: MaterialApp(
        title: 'Skatify',
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

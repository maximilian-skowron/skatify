import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:skatify/configs/routes.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Icon(RpgAwesome.diamonds_card),
        title: Text("Skatify"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () => Navigator.pushNamed(context, Routes.GameRoute,
                    arguments: 3),
                child: Text("Dreier-Spiel"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () => Navigator.pushNamed(context, Routes.GameRoute,
                    arguments: 4),
                child: Text("Vierer-Spiel"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.TournamentRoute),
                child: Text("Turnier"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

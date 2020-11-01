import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:skatify/configs/routes.dart';

class FallbackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Fontelico.emo_unhappy),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Text("Etwas ist schief gelaufen."),
            ),
            FlatButton(
              onPressed: () =>
                  Navigator.popAndPushNamed(context, Routes.HomeRoute),
              child: Text("Zurück zur Homepage"),
              textColor: Colors.white,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameConfigView extends StatelessWidget {
  final int playerCount;

  GameConfigView({this.playerCount, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('$playerCount'),
    );
  }
}

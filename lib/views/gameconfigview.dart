import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:provider/provider.dart';
import 'package:skatify/configs/routes.dart';
import 'package:skatify/viewmodel/gameconfigprovider.dart';

class GameConfigView extends StatelessWidget {
  final int playerCount;
  final double _roundMin = 1;
  final double _roundMax = 20;

  GameConfigView({this.playerCount, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _prov = Provider.of<GameConfigProvider>(context);
    _prov.playerCount = playerCount;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Neues Spiel"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _prov.startGame();
          Navigator.pushNamed(context, Routes.ResultRoundRoute);
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: this.playerCount,
                itemBuilder: (ctx, i) {
                  return _PlayerSelectWidget(i);
                },
              ),
            ),
            Flexible(
              child: SpinBox(
                value: _prov.roundCount,
                onChanged: (newValue) {
                  _prov.roundCount = newValue;
                },
                decoration: InputDecoration(
                  labelText: "Rundenanzahl:",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                min: _roundMin,
                max: _roundMax,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerSelectWidget extends StatelessWidget {
  final int number;

  _PlayerSelectWidget(this.number);

  @override
  Widget build(BuildContext context) {
    final _prov = Provider.of<GameConfigProvider>(context);

    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (s) {
              _prov.setName(s, number);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 8),
              labelText: "Spieler ${number + 1}",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

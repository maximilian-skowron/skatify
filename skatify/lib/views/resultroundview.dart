import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skatify/configs/routes.dart';
import 'package:skatify/viewmodel/roundresultprovider.dart';

class ResultRoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _prov = Provider.of<RoundResultProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Runde ${_prov.currentRound} / ${_prov.rounds}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 250,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _prov.selectedPlayer != null
                        ? _prov.selectedPlayer.name
                        : _prov.player[0].name,
                    items: _prov.player
                        .map(
                          (player) => DropdownMenuItem<String>(
                            value: player.name,
                            child: Text(player.name),
                          ),
                        )
                        .toList(),
                    onChanged: (playerName) {
                      _prov.selectPlayer = playerName;
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 120),
              ),
              MaterialButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.TournamentRoute),
                child: Text("Grand"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                minWidth: 180,
                height: 45,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
              ),
              MaterialButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.TournamentRoute),
                child: Text("Nullspiel"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                minWidth: 180,
                height: 45,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
              ),
              MaterialButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.TournamentRoute),
                child: Text("Schneider"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                minWidth: 180,
                height: 45,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
              ),
              MaterialButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.TournamentRoute),
                child: Text("Farbe"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                minWidth: 180,
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:skatify/models/player.dart';
import 'package:skatify/services/game_service.dart';

class RoundResultProvider extends ChangeNotifier {
  GameService gs;
  Player selectedPlayer;

  RoundResultProvider(this.gs);

  int get currentRound => gs.game.currRound;
  int get rounds => gs.game.rounds;

  List<Player> get player {
    return gs.game.playerList;
  }

  set selectPlayer(String name) {
    gs.game.playerList.forEach((player) {
      if (player.name.compareTo(name) == 0) {
        selectedPlayer = player;
        notifyListeners();
        return;
      }
    });
  }
}

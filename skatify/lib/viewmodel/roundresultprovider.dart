import 'package:flutter/cupertino.dart';
import 'package:skatify/models/player.dart';
import 'package:skatify/services/game_service.dart';

// Provider to manage the display of the score within the round.
class RoundResultProvider extends ChangeNotifier {
  GameService gs;
  // Player who played alone against the other within the round.
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

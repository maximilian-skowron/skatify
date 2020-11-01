import 'package:skatify/models/player.dart';

class Game {
  final List<Player> playerList;
  final int _rounds;
  int _currRound = 1;

  Game(this._rounds, {this.playerList});

  int get rounds => _rounds;
  int get currRound => _currRound;

  // get player index with top score
  int getTopPlayer() {
    // index of top player
    int indexPlayer = 0;

    playerList.asMap().forEach((i, p) {
      if (playerList[indexPlayer].score < p.score) {
        indexPlayer = i;
      }
    });

    return indexPlayer;
  }

  // Checks if game has ended or starts next round.
  bool nextRound() {
    if (_checkGameEnd()) {
      return true;
    }

    _currRound++;
    return false;
  }

  bool _checkGameEnd() {
    if (_currRound == _rounds) {
      return true;
    }
    return false;
  }
}

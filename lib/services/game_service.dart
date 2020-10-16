import 'package:skatify/models/game.dart';
import 'package:skatify/models/player.dart';

class GameModi {
  GameModi._();

  static const String Grand = "grand";
  static const String Nullspiel = "nullspiel";
  static const String Schneider = "schneider";
  static const String Farbe = "farbe";
}

class GameService {
  Game game;

  void startGame(int rounds, List<String> players) {
    var player = _setPlayers(players);

    this.game = Game(rounds, playerList: player);

    print(game.playerList);
    print(game.rounds);
  }

  List<Player> _setPlayers(List<String> players) {
    List<Player> player = [];

    players.forEach((playerName) {
      Player p = Player(playerName);

      player.add(p);
    });

    return player;
  }
}

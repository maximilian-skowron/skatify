import 'package:flutter/cupertino.dart';
import 'package:skatify/services/game_service.dart';

// Provider for the GameConfig View
//
// Manages input of round count and player names.
// The Service will set the values within the provided GameService.
class GameConfigProvider extends ChangeNotifier {
  double _roundCount = 1;
  List<String> _names = [];
  GameService gs;
  int _playerCount;

  GameConfigProvider(this.gs);

  set playerCount(int c) {
    _playerCount = c;
  }

  set roundCount(double newValue) {
    _roundCount = newValue;
    notifyListeners();
  }

  double get roundCount => _roundCount;

  void setName(String name, int i) {
    if (_names.length == 0) {
      for (int i = 0; i < _playerCount; i++) {
        _names.add("");
      }
    }

    _names[i] = name;
  }

  // will use the singleton gameservice to create a game
  // provide all values to gameservice
  void startGame() {
    gs.startGame(_roundCount.toInt(), _names);
  }
}

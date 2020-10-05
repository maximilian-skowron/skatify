class Player {
  String _name;
  int _score = 0;

  Player(this._name) : assert(_name != null);

  String get name => _name;

  int get score => _score;

  set score(int newValue) {
    _score = newValue;
  }
}

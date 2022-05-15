class GameNode {
  final bool _isVisible;
  bool _isBlack;

  GameNode(this._isVisible, this._isBlack);

  bool get isBlack => _isBlack;

  bool get isVisible => _isVisible;

  void switchColor() {
    _isBlack = !_isBlack;
  }

  void setColor(bool isBlack) {
    _isBlack = isBlack;
  }
}
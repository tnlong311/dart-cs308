class GameNode {
  final int xPosition;
  final int yPosition;
  final bool isVisible;
  bool _isBlack;

  GameNode(this.xPosition, this.yPosition, this.isVisible, this._isBlack);

  bool get isBlack => _isBlack;

  void switchColor() {
    _isBlack = !_isBlack;
  }

  void setColor(bool isBlack) {
    _isBlack = isBlack;
  }
}
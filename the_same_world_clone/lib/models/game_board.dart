import 'game_node.dart';

class GameBoard {
  final int level;
  List<List<GameNode>> _gameBoard;

  GameBoard(this.level, this._gameBoard);

  GameBoard.fromJson(this.level, this._gameBoard) {
    // TODO: initialize data from json here
  }

  List<List<GameNode>> get gameBoard => _gameBoard;

  // TODO
  void switchNodeColor(int xPosition, int yPosition) {

  }

  // TODO
  void setNodeColor(int xPosition, int yPosition, bool isBlack) {

  }

  // TODO
  bool checkGameStatus() {
    return true;
  }
}
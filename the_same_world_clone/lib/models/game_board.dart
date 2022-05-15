import 'dart:convert';

import 'package:flutter/services.dart';

class GameBoard {
  final int _level;
  final int _columns;
  final int _length;
  final List _boardList;


  GameBoard(this._level, this._columns, this._length, this._boardList);

  int get level => _level;

  int get columns => _columns;

  int get length => _length;

  List get boardList => _boardList;

  static getBoardList(String level) async {
    final String response =
        await rootBundle.loadString('assets/game_data/games.json');
    final data = await json.decode(response);

    final columns = data[level]["columns"] ?? 3;
    final length = data[level]["length"] ?? 9;
    final boardList =
        data[level]["game data"] ?? List.generate(9, (index) => 1);

    return GameBoard(int.tryParse(level) ?? 1, columns, length, boardList);
  }

  void switchColor(int index) {
    if (_boardList[index] == 0) {
      _boardList[index] = 1;
    } else if (_boardList[index] == 1) {
      _boardList[index] = 0;
    }
  }

  bool checkGameStatus() {
    int ones = 0;
    int zeros = 0;

    for (int num in _boardList) {
      if(num == 0) {
        zeros ++;
      } else if (num == 1) {
        ones ++;
      }
    }

    return (ones == 0 || zeros == 0);
  }
}

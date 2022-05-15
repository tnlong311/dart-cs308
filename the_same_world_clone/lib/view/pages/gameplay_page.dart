import 'package:flutter/material.dart';

import '../../models/game_board.dart';

class GameplayPage extends StatefulWidget {
  static const routeName = "/gameplay";

  const GameplayPage({Key? key}) : super(key: key);

  @override
  State<GameplayPage> createState() => _GameplayPageState();
}

class _GameplayPageState extends State<GameplayPage> {
  late GameBoard _board;

  @override
  void initState() {
    super.initState();

    initBoard();
  }

  void initBoard() async {
    await GameBoard.getBoardList("1").then((result) {
      setState(() {
        _board = result;
      });

      print(_board.boardList);
    });
  }

  void updateNode(index) {
    print(index);

    setState(() {
      _board.switchColor(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'action buttons here',
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.cyan,
        child: GridView.builder(
          padding: const EdgeInsets.all(30),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _board.columns,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, index) {
            return _board.boardList[index] == -1
                ? SizedBox.shrink()
                : Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _board.boardList[index] == 1
                          ? Colors.black
                          : Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: GestureDetector(
                      onHorizontalDragUpdate: (details) {
                        print('$index');
                      },
                      onTap: () => updateNode(index),
                      child: Center(
                        child: Text(
                          '$index',
                          style: TextStyle(
                            color: _board.boardList[index] == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
          },
          itemCount: _board.length,
        ),
      ),
    );
  }
}

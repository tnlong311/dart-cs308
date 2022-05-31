import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/game_board.dart';
import '../widgets/game_node.dart';

class GameplayPage extends StatefulWidget {
  static const routeName = "/gameplay";

  const GameplayPage({Key? key, this.level}) : super(key: key);

  final String? level;

  @override
  State<GameplayPage> createState() => _GameplayPageState();
}

class _GameplayPageState extends State<GameplayPage> {
  static const padding = 10.0;
  late GameBoard _board;

  bool _gameDone = false;
  final Set<int> selectedIndexes = <int>{};
  final key = GlobalKey();
  final Set<_MultiSelectWidget> _trackTaped = <_MultiSelectWidget>{};

  @override
  void initState() {
    super.initState();

    initBoard(widget.level);
  }

  void initBoard(level) async {
    await GameBoard.getBoardList(level).then((result) {
      setState(() {
        _board = result;
      });

      print(_board.boardList);
    });
  }

  void _updateNode(indexList) {
    for (int index in indexList) {
      setState(() {
        _board.switchColor(index);
      });
    }
  }

  _detectTapedItem(PointerEvent event) {
    final RenderBox box =
        key.currentContext!.findAncestorRenderObjectOfType<RenderBox>()!;
    final result = BoxHitTestResult();
    Offset local = box.globalToLocal(event.position);
    if (box.hitTest(result, position: local)) {
      for (final hit in result.path) {
        /// temporary variable so that the [is] allows access of [index]
        final target = hit.target;

        if (target is _MultiSelectWidget && !_gameDone) {
          if (!_trackTaped.contains(target)) {
            _trackTaped.add(target);
            _selectIndex(target.index);
          }
          // roll back
          else if (selectedIndexes.last != target.index &&
              selectedIndexes.contains(target.index)) {
            _trackTaped.remove(selectedIndexes.last);
            _unSelectIndex(selectedIndexes.last);
          }
        }
      }
    }
  }

  _selectIndex(int index) {
    setState(() {
      selectedIndexes.add(index);
    });
  }

  _unSelectIndex(int index) {
    setState(() {
      selectedIndexes.remove(index);
    });
  }

  void _clearSelection(PointerUpEvent event) {
    //update selected node
    _updateNode(selectedIndexes);

    if (_board.boardList[selectedIndexes.first] > 1) {
      _board.removeBeginNode(selectedIndexes.first);
    }

    //reset all
    _trackTaped.clear();
    setState(() {
      selectedIndexes.clear();
    });

    if (_board.checkGameFinished()) {
      setState(() {
        _gameDone = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: padding),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, size: 35.0),
            tooltip: 'Go back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'LEVEL ${widget.level}',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: padding),
            child: IconButton(
              icon: const Icon(Icons.refresh, size: 35.0),
              tooltip: 'Replay game',
              onPressed: () {
                initBoard(widget.level);
                setState(() {
                  _gameDone = false;
                });
              },
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: !_gameDone
                  ? const SizedBox.shrink()
                  : Center(
                      child: Text(
                        _board.checkGameStatus() ? "YOU WIN!" : "YOU LOSE!",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
            ),
            Expanded(
              flex: 2,
              child: Listener(
                onPointerDown: _detectTapedItem,
                onPointerMove: _detectTapedItem,
                onPointerUp: _clearSelection,
                child: GridView.builder(
                  key: key,
                  padding: const EdgeInsets.all(30),
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: _board.columns,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return _board.boardList[index] == -1
                        ? const SizedBox.shrink()
                        : MultiSelectWidget(
                            index: index,
                            child: GameNode(
                              index: index,
                              indexValue: _board.boardList[index],
                              selectedIndexes: selectedIndexes,
                            ),
                          );
                  },
                  itemCount: _board.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MultiSelectWidget extends SingleChildRenderObjectWidget {
  final int index;

  const MultiSelectWidget(
      {required Widget child, required this.index, Key? key})
      : super(child: child, key: key);

  @override
  _MultiSelectWidget createRenderObject(BuildContext context) {
    return _MultiSelectWidget(index);
  }

  @override
  void updateRenderObject(
      BuildContext context, _MultiSelectWidget renderObject) {
    renderObject.index = index;
  }
}

class _MultiSelectWidget extends RenderProxyBox {
  int index;

  _MultiSelectWidget(this.index);
}

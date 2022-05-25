import 'package:flutter/material.dart';

class GameNode extends StatelessWidget {
  const GameNode(
      {Key? key,
      required this.index,
      required this.indexValue,
      required this.selectedIndexes})
      : super(key: key);

  final int index;
  final int indexValue;
  final Set<int> selectedIndexes;

  bool _isSelecting() {
    return selectedIndexes.contains(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: indexValue%2 == 1 ? Colors.black : Colors.white,
        border: _isSelecting()
            ? null
            : Border.all(
                color: indexValue%2 == 0 ? Colors.black : Colors.white,
              ),
        boxShadow: _isSelecting()
            ? [
                BoxShadow(
                  color: (indexValue%2 == 0 ? Colors.black : Colors.white)
                      .withOpacity(0.8),
                  spreadRadius: 3,
                  blurRadius: 4,
                  // offset: const Offset(2, 2), // changes position of shadow
                ),
              ]
            : null,
      ),
      child: Center(
        child: Text(
          indexValue > 1 ? 'S' : "",
          style: TextStyle(
            color: indexValue == 3 ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

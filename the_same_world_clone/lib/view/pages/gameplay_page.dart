import 'package:flutter/material.dart';

class GameplayPage extends StatefulWidget {
  static const routeName = "/gameplay";

  const GameplayPage({Key? key}) : super(key: key);

  @override
  State<GameplayPage> createState() => _GameplayPageState();
}

class _GameplayPageState extends State<GameplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('action buttons here'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.red,
        child: Text('game board here'),
      )
    );
  }
}

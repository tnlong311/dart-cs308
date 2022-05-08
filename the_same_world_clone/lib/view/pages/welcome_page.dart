import 'package:flutter/material.dart';
import 'package:the_same_world_clone/view/pages/gameplay_page.dart';
import 'package:the_same_world_clone/view/widgets/app_button.dart';

class WelcomePage extends StatefulWidget {
  static const routeName = "/";

  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Center(child: Text('The same world clone'.toUpperCase()))),
          Expanded(flex: 2, child: Center(child: Text('a picture here'))),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  AppButton(title: 'level'.toUpperCase(), onPressed: () {}),
                  AppButton(
                      title: 'start'.toUpperCase(),
                      onPressed: () {
                        Navigator.pushNamed(context, GameplayPage.routeName);
                      }),
                ],
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:the_same_world_clone/view/pages/gameplay_page.dart';
import 'package:the_same_world_clone/view/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Same World Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomePage.routeName,
      routes: {
        WelcomePage.routeName: (context) => WelcomePage(),
        GameplayPage.routeName: (context) => GameplayPage(),
      },
    );
  }
}
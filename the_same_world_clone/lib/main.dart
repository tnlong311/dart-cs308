import 'package:flutter/material.dart';
import 'package:the_same_world_clone/view/pages/gameplay_page.dart';
import 'package:the_same_world_clone/view/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
        brightness: Brightness.light,
        primaryColor: Colors.pink,
        scaffoldBackgroundColor: Colors.cyan[400],

        textTheme: TextTheme(
          headline2: GoogleFonts.patrickHand(fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
          headline3: GoogleFonts.patrickHand(fontSize: 54.0, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
          headline4: GoogleFonts.patrickHand(fontSize: 48.0, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
          headline5: GoogleFonts.patrickHand(fontSize: 42.0, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
          headline6: GoogleFonts.patrickHand(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
          bodyText1: GoogleFonts.patrickHand(fontSize: 16.0),
          bodyText2: GoogleFonts.patrickHand(fontSize: 14.0),
          headlineLarge:  GoogleFonts.patrickHand(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
          labelMedium: GoogleFonts.patrickHand(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // onPrimary: Colors.yellow,
            primary: Colors.lightBlue[900],
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink[600],
        )
      ),
      initialRoute: WelcomePage.routeName,
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        GameplayPage.routeName: (context) => GameplayPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:the_same_world_clone/view/pages/gameplay_page.dart';
import 'package:the_same_world_clone/view/widgets/app_button.dart';
import 'package:the_same_world_clone/view/widgets/dropdown_button.dart';

class WelcomePage extends StatefulWidget {
  static const routeName = "/";

  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int dropdownValue = 1;

  void onDropdownChange(newValue) {
    setState(() {
      dropdownValue = newValue! ?? 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'The same world clone'.toUpperCase(),
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDropdownButton(
                      dropdownValue: dropdownValue, onChange: onDropdownChange),
                  const SizedBox(
                    height: 40.0,
                  ),
                  AppButton(
                      title: 'START',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => GameplayPage(
                                    level: dropdownValue.toString(),
                                  )),
                        );
                        // Navigator.pushNamed(context, GameplayPage.routeName, arguments: {'level': dropdownValue});
                      }),
                ],
              )),
        ],
      ),
    );
  }
}

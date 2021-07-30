import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_packages_app/widgets/card_header_title.dart';

class PackagesList extends StatelessWidget {
  PackagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Packages List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeaderTitleCard(
              headerTitle: "Easy Localization",
              onTab: () {
                Navigator.of(context).pushNamed('/easyLocalizationScreen');
              },
            ),
            HeaderTitleCard(
              headerTitle: "GetX",
              onTab: () {
                Navigator.of(context).pushNamed('/getxControl');
              },
            ),
            HeaderTitleCard(
              headerTitle: "Animated Theme Switcher",
              onTab: () {
                Navigator.of(context).pushNamed('/animatedThemeSwitcherScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

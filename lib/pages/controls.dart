import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_packages_app/widgets/card_header_title.dart';

class ControlList extends StatelessWidget {
  ControlList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeaderTitleCard(
              headerTitle: "Curved Navigation Bar",
              onTab: () {
                Navigator.of(context).pushNamed('/curvedNavigationBarControl');
              },
            ),
          ],
        ),
      ),
    );
  }
}

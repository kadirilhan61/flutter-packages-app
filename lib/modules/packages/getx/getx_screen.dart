import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_packages_app/widgets/card_header_title.dart';
import 'package:get/get.dart';

class GetxControl extends StatelessWidget {
  GetxControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeaderTitleCard(
              headerTitle: "Snacbar",
              onTab: () {
                Get.snackbar(
                  "Test",
                  "Message",
                  barBlur: 2,
                  backgroundColor: Colors.red.shade600,
                  colorText: Colors.white,
                );
              },
            ),
            HeaderTitleCard(
              headerTitle: "Default dialog",
              onTab: () {
                print("default dialog");
                Get.defaultDialog(title: "default dialog");
              },
            ),
          ],
        ),
      ),
    );
  }
}

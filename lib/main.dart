import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter_packages_app/modules/packages/easy_localization/easy_localization.dart';
import 'package:flutter_packages_app/modules/packages/easy_localization/easy_localization_screen.dart';
import 'package:flutter_packages_app/pages/controls.dart';
import 'package:flutter_packages_app/pages/packages.dart';
import 'package:flutter_packages_app/widgets/card_header_title.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'modules/controls/curved_navigation_bar.dart';
import 'modules/packages/animated_theme_switcher/animated_theme_switcher_screen.dart';
import 'modules/packages/getx/getx_screen.dart';

import 'package:flutter_packages_app/modules/packages/animated_theme_switcher/theme_config.dart';

// https://pub.dev/packages/easy_localization/example
// https://medium.com/swlh/flutter-internationalization-with-easy-localization-790e46ca30e8

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  Widget localization = LocalizationMyApp(MyApp());
  runApp(localization);
}

// void main() => runApp(MyAppAnimatedThemeSwitcher());
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance!.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark ? darkTheme : lightTheme;

    return ThemeProvider(
      initTheme: initTheme,
      builder: (_, myTheme) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // locale: Locale('en', 'UK'),
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
          routes: {
            '/packagesList': (context) => PackagesList(),
            '/easyLocalizationScreen': (context) => EasyLocalizationScreen(),
            '/controlList': (context) => ControlList(),
            '/curvedNavigationBarControl': (context) =>
                CurvedNavigationBarControl(),
            '/getxControl': (context) => GetxControl(),
            '/animatedThemeSwitcherScreen': (context) =>
                AnimatedThemeSwitcherScreen(),
          },
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeaderTitleCard(
              headerTitle: "Packages",
              onTab: () {
                Navigator.of(context).pushNamed('/packagesList');

                // Navigator.of(context).pushNamedAndRemoveUntil(
                //     '/homeScreen', (Route<dynamic> route) => false);
              },
            ),
            HeaderTitleCard(
              headerTitle: "Controls",
              onTab: () {
                Navigator.of(context).pushNamed('/controlList');
              },
            ),
            HeaderTitleCard(
              headerTitle: "Plugins",
              onTab: () {
                print("test");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

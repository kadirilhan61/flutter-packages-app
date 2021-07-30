import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationSetup {
  static void init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}

class LocalizationMyApp extends StatelessWidget {
  const LocalizationMyApp(this.widget, {Key? key}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      child: widget,
      supportedLocales: [
        Locale('tr', 'TR'),
        Locale('en', 'UK'),
        Locale('es', 'SP')
      ],
      fallbackLocale: Locale('tr', 'TR'),
      path: 'assets/translations',
    );
  }
}

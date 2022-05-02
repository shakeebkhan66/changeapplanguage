import 'package:flutter/material.dart';
import 'change_language_screen.dart';
import 'package:get/get.dart';

import 'locale_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocalString(),
      locale: const Locale('en', 'US'),
      home: const ChangeLanguageScreen(),
    );
  }
}


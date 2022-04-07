import 'package:flutter/material.dart';
import 'package:revisao/src/app/modules/intro_page/intro_page.dart';
import 'package:revisao/src/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: IntroPage(),
    );
  }
}

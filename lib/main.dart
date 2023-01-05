import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ksec_login/login_page.dart';

import 'splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenSplash(),
    );
  }
}

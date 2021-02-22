import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ledger_refactor_with_flutter/config/ThemeColors.dart';
import 'package:ledger_refactor_with_flutter/view/login/LoginPage.dart';

void main() {
  runApp(MyApp());

  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));

  // if (Platform.isAndroid) {
  //   SystemUiOverlayStyle style = SystemUiOverlayStyle(
  //       statusBarColor: Colors.transparent,
  //
  //       statusBarIconBrightness: Brightness.dark
  //   );
  //   SystemChrome.setSystemUIOverlayStyle(style);
  // }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '治帐',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: ThemeColors.picaTheme,
      ),
      home: LoginPage(),
    );
  }
}

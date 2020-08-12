import 'package:flutter/material.dart';

import 'package:shop7ecx/pages/countdown_page.dart';
import 'package:shop7ecx/pages/home_page.dart';
import 'package:shop7ecx/pages/login_page.dart';
import 'package:shop7ecx/pages/products_page.dart';
import 'package:shop7ecx/pages/registration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/countdown': (context) => Countdown(),
        '/products': (context) => Products(),
        '/login': (context) => LoginPage(),
        '/registration': (context) => RegistrationPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ));
  }
}
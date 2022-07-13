import 'package:eparkir_waluyo/auth/screens/welcome/welcome_screen.dart';
import 'package:eparkir_waluyo/landing_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Parking',
      home: LandingPage(),
    );
  }
}

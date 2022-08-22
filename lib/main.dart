import 'package:flutter/material.dart';
import 'package:whatsapp/views/splash-screen.dart';
import 'package:whatsapp/views/status_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:megaapp/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      theme: ThemeData(
        primarySwatch: Colors.blue, /*fontFamily: 'Afont'*/
      ),
      home: const Home(),
    );
  }
}

import 'package:flutter/material.dart';

import './helpers/helpers.dart';

import './screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avaliação - Animais',
      theme: ThemeData(
        primaryColor: colorPrimary,
      ),
      home: HomeScreen(),
    );
  }
}


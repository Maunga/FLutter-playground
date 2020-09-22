import 'package:flutter/material.dart';
import 'package:playground/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeche',
      theme: ThemeData.dark(),
      home: HomeScreen(title: 'Total')
    );
  }
}


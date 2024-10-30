import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home_screen1',
    debugShowCheckedModeBanner: false,
    routes: {

      ),
    },
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: HomeScreen(),
  ));
}

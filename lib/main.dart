import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/phone.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home_screen',
    debugShowCheckedModeBanner: false,
    routes: {
  'phone': (context) => MyPhone(),


    },
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: HomeScreen(),
  ));
}

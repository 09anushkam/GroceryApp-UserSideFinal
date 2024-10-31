import 'package:flutter/material.dart';
import 'screens/home_screen1.dart';
import 'screens/phone.dart';
import 'screens/otp.dart';
import 'screens/LocationScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home_screen1',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (context) => MyOtp(),
      'LocationScreen': (context) => LocationScreen(),


    },
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: home_screen1(),
  ));
}

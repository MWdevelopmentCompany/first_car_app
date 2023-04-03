// ignore_for_file: prefer_const_constructors

import 'package:car_app/screens/Navigator.dart';
import 'package:car_app/screens/showdata.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         home: NavigaorScreen());
  }
}

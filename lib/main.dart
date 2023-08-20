import 'package:flutter/material.dart';
import 'package:food_delivery/card/card_screen/card_screen.dart';
import 'home/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF5F5F3)),
      routes: {
        "/": (context) => HomePage(),
        'cardwidget': (context) => CardWidget(),
      },
    );
  }
}

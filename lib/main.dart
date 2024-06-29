import 'package:flutter/material.dart';
import 'package:promilatestapp/Screens/descriptionscreen.dart';
import 'package:promilatestapp/Screens/homescreen.dart';
import 'package:promilatestapp/Screens/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        Homescreen.route: (context) => Homescreen(),
        DescriptionScreen.route: (context) => DescriptionScreen(),
      },
    );
  }
}

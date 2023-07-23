import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer/Screens/home_screen.dart';
import 'package:flutter_navigation_drawer/Screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context)=> HomeScreen(),
        SecondScreen.id: (context)=> SecondScreen(),
      } ,
      //home: HomeScreen(),
    );
  }
}


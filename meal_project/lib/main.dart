import 'package:flutter/material.dart';
import 'package:meal_project/screens/home_screen.dart';
import 'package:meal_project/screens/mealscreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "mealscreen": (context)=>mealscrean_2(),
      },
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    );
  }
}

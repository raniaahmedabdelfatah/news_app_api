import 'package:flutter/material.dart';
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.health_and_safety_outlined),label: "BMI"),
        BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculat"),
        BottomNavigationBarItem(icon: Icon(Icons.cached),label: "result"),
      ],
        backgroundColor: Colors.teal,
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child:Text("BMI")),
      ),
      body: null,
    );
  }
}

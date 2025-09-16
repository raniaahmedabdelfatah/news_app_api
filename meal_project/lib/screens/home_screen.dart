import 'package:flutter/material.dart';
import 'package:meal_project/styles.dart';
import 'package:meal_project/widget/cateogry_item.dart';

import '../data.dart';
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child:Text("Meals")),
      ),
      body:ListView.builder(
        itemCount: categories.length,
          itemBuilder: (context,index){
        return catogry_item(cateogry: categories[index]);
      }
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../model/category.dart';
import 'category_item.dart';
class category_listview extends StatelessWidget {
  const category_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120
      ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return category_item(x: newcategory[index]);
        },itemCount: newcategory.length,),
    );
  }
}

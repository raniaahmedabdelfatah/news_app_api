import 'package:flutter/material.dart';
import 'package:news_app/widgets/style.dart';

import '../../model/category.dart';
class category_item extends StatelessWidget {
  const category_item( {super.key, required this.x});
  final category x;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 60,
        backgroundImage:  NetworkImage(x.image),
        backgroundColor: Colors.orange,
        child: Text(x.name,style:  Appstyle.textstyle30,),
      ),
    );
  }
}

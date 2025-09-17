import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/widgets/article_widget/article_item.dart';
import 'package:news_app/widgets/article_widget/article_listview.dart';
import 'package:news_app/widgets/category_widget/category_item.dart';
import 'package:news_app/widgets/category_widget/category_listview.dart';

import '../widgets/style.dart';
class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("News App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal,color: Colors.white),),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            category_listview(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("General News"),
            ),
           article_listviews(),
        
        
          ],
        ),
      ),
    );
  }
}

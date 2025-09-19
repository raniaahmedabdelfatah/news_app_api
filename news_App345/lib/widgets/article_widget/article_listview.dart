import 'package:flutter/material.dart';
import 'package:news_app/network1/api_services1.dart';

import '../../model/Article.dart';
import 'article_item.dart';
class article_listviews extends StatefulWidget {
  const article_listviews({super.key});

  @override
  State<article_listviews> createState() => _article_listviewsState();
}

class _article_listviewsState extends State<article_listviews> {
  api_service Api_services=api_service();
  List<Article>?x;
  @override
  Widget build(BuildContext context) {
    return x==null? SliverToBoxAdapter(
        child: CircularProgressIndicator()):  SliverList.builder(

      itemBuilder: (context,index){
        return article_item(article:x![index]);
      },itemCount: x!.length,);
  }

  @override
  void initState(){
getarticle();
    super.initState();

}
  getarticle()async{
    x=await  Api_services.getnews();
    setState(() {

    });
  }
}

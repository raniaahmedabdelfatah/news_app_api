import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/model/Article.dart';
import 'package:news_app/widgets/style.dart';
class article_item extends StatelessWidget {
  const article_item({super.key,required this.article});
final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         ClipRRect(
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(30),
             topLeft: Radius.circular(30)

           ),
           child: Image.network(
               fit: BoxFit.fill,
               width: double.infinity,
               height: 200,
               article.urlToImage??"No image"),
         ),
          Text(
            maxLines: 2,
              overflow: TextOverflow.ellipsis,

              article.title,
            style: Appstyle.textstyle30.copyWith(color: Colors.black),),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.description??"No description",

            style: Appstyle.textstyle30.copyWith(color: Colors.grey,fontSize: 20),)
        ],
      ),
    );
  }
}

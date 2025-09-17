import 'package:flutter/material.dart';

import 'article_item.dart';
class article_listviews extends StatelessWidget {
  const article_listviews({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: NeverScrollableScrollPhysics(
      ),
      shrinkWrap: true,
      itemBuilder: (context,index){
        return article_item();
      },itemCount: 5,);
  }
}

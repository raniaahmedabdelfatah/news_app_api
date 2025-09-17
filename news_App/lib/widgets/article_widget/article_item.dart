import 'package:flutter/material.dart';
class article_item extends StatefulWidget {
  const article_item({super.key});

  @override
  State<article_item> createState() => _article_itemState();
}

class _article_itemState extends State<article_item> {
  bool isExpanded=false;
  bool isExpand=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius:BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8)
              ),
              child: Image.network(
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 200,
                  "https://images.pexels.com/photos/16061328/pexels-photo-16061328.jpeg")),
          InkWell(
            onTap: (){
              setState(() {
                isExpanded=!isExpanded;
              });
            },
            child: Text(

                maxLines:isExpanded?null:2 ,
                overflow: isExpanded? TextOverflow.visible:TextOverflow.ellipsis,
                "titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle"),
          ),
          InkWell(
            onTap: (){
              setState(() {
                isExpand=!isExpand;
              });
            },
            child: Text(

              maxLines:isExpand?null:2 ,
              overflow: isExpand? TextOverflow.visible:TextOverflow.ellipsis,
              "titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle",
              style: TextStyle(fontSize: 10,color: Colors.grey),),
          )
        ],
      ),
    )
    ;
  }
}

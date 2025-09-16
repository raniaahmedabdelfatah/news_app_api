import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../model/Cateogry.dart';
import '../styles.dart';
class catogry_item extends StatelessWidget {
   catogry_item({super.key,required this.cateogry});
final  Category cateogry;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: (){
          Navigator.pushNamed(context, "mealscreen",arguments: {
            "name":cateogry.name,
            "id" :cateogry.id,
          });
          },

          child: Container(

            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:  AssetImage(cateogry.image)
              ),

            ),
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                color: Colors.black54,
                child: Text(cateogry.name,style: Appstyle.texstyle30,)
            ),
          ),
        ),
      ),
    );
  }
}

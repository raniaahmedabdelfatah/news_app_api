import 'package:flutter/material.dart';
import 'package:meal_project/data.dart';
import '../model/Meal.dart';
class mealscrean_2 extends StatelessWidget {
  mealscrean_2({super.key});

  @override
  Widget build(BuildContext context) {
   var data= ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
   List<Meal>meal=meals.where((value){
return value.categoryNumber==data["id"];

   }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(data["name"]),
      ),
      body:meal.isEmpty

          ?Center(child: Text("no meal",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),)
      :ListView.builder(
          itemCount: meal.length,
          itemBuilder: (context,index){

        return Column(

          children: [
            Container(
              padding: EdgeInsets.all(8),

              margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
              
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(12),
                

              ),
              child: Row(
                children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(8),
                   child: Image.asset(meal[index].imageUrl,width: 80,
                       height: 80,fit: BoxFit.cover,),
                 ),
                  SizedBox(width: 12,),
                  Expanded(
                      child: Text(data["name"],
                        style: TextStyle(
                            fontSize: 30,

                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            backgroundColor: Colors.black54),)),
                  Icon(Icons.arrow_forward_ios,size: 16,color: Colors.grey,)
                ],
              ),
            )
          ],
        );



      }),
    );
  }
}

import'package:flutter/material.dart';
import 'p';
void main(){
  runApp(bmicalculate());
}
class bmicalculate extends StatelessWidget {
  const bmicalculate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmipage1(),
    );
  }
}

enum Gender {male,female}
class bmipage1 extends StatefulWidget {
  const bmipage1({super.key});

  @override
  State<bmipage1> createState() => _bmipage1State();
}

class _bmipage1State extends State<bmipage1> {
  Gender? selectedGender;
  int age=20;
  int weight=70;
  int height=70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        centerTitle: true,


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Gendercard(
                    icon:Icons.male,
                    label:"Male",
                      IsActive :selectedGender==Gender.male,
                    onTap:(){
                      setState(() {
                        selectedGender=Gender.male;
                      }
                      );
                    }
                  )
              ),
              Expanded(
                  child: GenderCard(
                      icon:Icons.female,
                      label:"Female",
                      IsActive :selectedGender==Gender.female,
                      onTap:(){
                        setState(() {
                          selectedGender=Gender.female;
                        }
                        );
                      }
                  )
              ),

            ],
          ))

        ],
      ),
    );
  }
}


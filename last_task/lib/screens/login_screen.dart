import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_screen.dart';
class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 20,),
                  Text("Enter a beautiful World",style: TextStyle(fontSize: 24,color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 70,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(),
                          labelText:"Email",
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter your email",
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(),
                          labelText:"Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(onPressed: (){},icon: Icon (Icons.visibility_off),),
                          hintText: "Enter your email",
                        ),
                      ),
                      TextButton(onPressed: (){}, child: Text("Forget your password",style: TextStyle(fontSize: 20,color: Colors.blue),)),
                      SizedBox(height: 20,),
                      MaterialButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                          return home_screen();
                        }));
                      },child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
                        child:Center (child: Text("Login"),),
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

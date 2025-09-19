import 'package:flutter/material.dart';
void main(){
  runApp(MyAPP());
}
class MyAPP extends StatelessWidget {
   MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: circute(),
    );//MaterialApp
  }//build
}//ststless


class circute extends StatefulWidget {
  @override
  State<circute> createState() => _circuteState();
}

class _circuteState extends State<circute> {
  double _valueslider=0.0;

  @override
  Widget build(BuildContext context) {


    double size=150;
    double maxradius=size/2;
    double currentradius=maxradius *(1- _valueslider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_valueslider.toStringAsFixed(2),
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            AnimatedContainer(duration: Duration(milliseconds:300),
            width: size,
              height: size,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(currentradius),
              ),
            ),
            Slider(value: _valueslider, onChanged: (double value)
            {
              setState(() {
                _valueslider = value;
              });
            }
            ),
          ],
        ),
      ),
    );
  }}//statless

import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}

class BMIScreen extends StatelessWidget {
  const BMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          // Male / Female
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 80, color: Colors.white),
                        SizedBox(height: 10),
                        Text("Male",
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 80, color: Colors.white),
                        SizedBox(height: 10),
                        Text("Female",
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Height Slider
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("177",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(" cm", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Slider(
                    value: 177,
                    min: 100,
                    max: 220,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.grey,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),

          // Weight & Age
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight",
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                        Text("70",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "btn1",
                              backgroundColor: Colors.grey[700],
                              mini: true,
                              onPressed: () {},
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              heroTag: "btn2",
                              backgroundColor: Colors.grey[700],
                              mini: true,
                              onPressed: () {},
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age",
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                        Text("20",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "btn3",
                              backgroundColor: Colors.grey[700],
                              mini: true,
                              onPressed: () {},
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton(
                              heroTag: "btn4",
                              backgroundColor: Colors.grey[700],
                              mini: true,
                              onPressed: () {},
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Calculate Button
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.pink,
            child: Center(
              child: Text(
                "Calculate",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

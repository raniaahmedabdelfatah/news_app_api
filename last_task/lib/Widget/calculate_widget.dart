import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class bmi_widget extends StatefulWidget {
  const bmi_widget({super.key});

  @override
  State<bmi_widget> createState() => _bmi_widgetState();
}

class _bmi_widgetState extends State<bmi_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          color: Colors.teal,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [

                  ],
                ),
              )
            ],
          ),
        )),
        Expanded(child: Container()),
        Expanded(child: Container()),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/bmi_calculator.dart';

class res extends StatelessWidget{
  final bool isMale;
  final double result;
  final int age;
res({
   required this.result, required this.age,required this.isMale


});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Result"),leading: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,)),
      ),)
      ,body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Gender : ${isMale?"Male":"Female"}",style: TextStyle(fontSize: 40),)
          ,
          Text("Result : ${result.round()}",style: TextStyle(fontSize: 40)),
          Text("Age : ${age}",style: TextStyle(fontSize: 40))
        ],
    ),
      ) ,
    );
  }
}
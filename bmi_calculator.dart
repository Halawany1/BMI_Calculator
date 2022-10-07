

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/result.dart';

class Bmi extends StatefulWidget{

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  bool ismale=true;
  double height=120.0;
  double weight=40;
  double result=0.0;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator",style: TextStyle(fontSize: 20),),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),

            child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  ismale=false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: ismale?Colors.blue:Colors.grey[400],

                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Image(image: AssetImage('images/femenine.png')),
                      SizedBox(height: 10,),
                      Text("Female",style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
          ),
            SizedBox(width: 20,),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    ismale=true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: ismale?Colors.grey[400]:Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/mars.png'),),
                        SizedBox(height: 10,),
                        Text("Male",style: TextStyle(fontSize: 30),)
                      ],
                    ),
                  ),
                ),
              ),
            )
        ],
    ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
            decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  children: [
                    Text("Height",style: TextStyle(fontSize: 25),),
                   SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children: [ Text("${height.round()}",style: TextStyle(fontSize: 40),),Text("CM",)],),
                    SizedBox(height: 10,),
                    Slider(
                      value: height, onChanged: (value){
                        setState(() {
height=value;
                        });
                    },min: 80,max: 230,)

                  ],
              ),
            ),
          ),
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 176,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text("Weight",style: TextStyle(fontSize: 24),),
                          Text("${weight.round()}",style: TextStyle(fontSize: 40)),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FloatingActionButton(mini:true,onPressed: (){
                              setState(() {

                              });
                              weight--;
                            },child: Icon(Icons.remove),),
                            SizedBox(width: 18,), FloatingActionButton(mini: true ,onPressed: (){
                              setState(() {

                              });
                              weight++;
                              },child: Icon(Icons.add),)
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 176,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text("AGE",style: TextStyle(fontSize: 24),),
                          Text("${age}",style: TextStyle(fontSize: 40)),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },child: Icon(Icons.remove),),SizedBox(width: 18,),
                            FloatingActionButton(mini: true,onPressed: (){
                              setState(() {
                                age++;
                              });
                            },child: Icon(Icons.add),)
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            color: Colors.blue,
              width: double.infinity,
              child: MaterialButton(onPressed: (){
               result=weight/pow(height/100, 2);
               Navigator.push(context, MaterialPageRoute(builder: (context) => res(result: result,
                   age: age, isMale: ismale),));

    } ,child: Text("CALCULATE",style: TextStyle(color: Colors.white,fontSize: 18)),
          )
          )
      ],
    ),
    );
  }
}
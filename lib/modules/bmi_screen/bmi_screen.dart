import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmi_result.dart';

class bmi_screen extends StatefulWidget {
  const bmi_screen({super.key});

  @override
  State<bmi_screen> createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  bool  isMale = true;
  double height= 80;
  int wight = 40;
  int age= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: const Center(
          child:
          Text('BMI',
            style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body:Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child:Padding(padding: EdgeInsetsGeometry.all(20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child:
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:isMale? Colors.blue: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/images/male.png"),
                                width: 90,
                                height: 90,
                              ),
                              Text('MALE',
                                style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),
                              ),
                            ],
                          ),
                        ),

                      ),

                  ),
                  SizedBox(width: 20,),
                  Expanded(child:GestureDetector(
                  onTap: (){
                    setState(() {
                    isMale=false;
                      });
                        },
                            child:
                  Container(
                    decoration: BoxDecoration(
                      color:isMale?Colors.grey : Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/female.png"),
                          width: 90,
                          height: 90,
                        ),
                        Text('FEMALE',
                          style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),
                        ),
                      ],
                    ),
                  ),
                  ),

                  ),

                ],
              ),
            ),


          ),

          Expanded(child:
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child:  Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text('HEIGHT',
                    style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),
                  ),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text('${height.round()}',
                        style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),
                      ),
                      Text('CM',
                        style: TextStyle(fontSize: 10,fontWeight:FontWeight.bold ),
                      ),

                    ],
                  ),
                  Slider(value: height,
                    max: 200,
                    min: 50,
                    onChanged: (value){
                    setState(() {
                      height=value;

                    });
                    },

                  ),

                ],
              ),
            ),
          ),





          ),
          Expanded(
            child: Padding(padding: EdgeInsetsGeometry.all(20),
              child:Row(
                children: [
                  Expanded(child:
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('WIGHT',
                          style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
                        ),
                        Text('$wight',
                          style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                wight--;
                              });

                            },
                              heroTag: 'wight-',
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: Icon(Icons.remove,color: Colors.white,),
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                wight ++;
                              });
                            },
                              heroTag: 'wight+',
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: Icon(Icons.add,color: Colors.white,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(child:
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('AGE',
                          style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
                        ),
                        Text('$age',
                          style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;

                              });
                            },
                              heroTag: 'age-',
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: Icon(Icons.remove,color: Colors.white,),
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                              heroTag: 'age+',
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: Icon(Icons.add,color: Colors.white,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),



                ],
              ),

            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(onPressed: (){
              var result = wight / pow(height / 100 , 2);
              print(result.round());
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>BMIResult(isMale: isMale, result: result.round() , age: age,),
                ),
              );
            },
              child: Text('CALCULATE'),
            ),
          ),

        ],
      ),


    );
  }
}


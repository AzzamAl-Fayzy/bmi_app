import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text('COUNTER'),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                counter--;
                print(counter);
              });

            },
                child: Text('-',style: TextStyle(fontSize: 50),)),
            Text('$counter',style: TextStyle(fontSize: 70)),
            TextButton(onPressed: (){
              setState(() {
                counter++;
                print(counter);
              });
            },
                child: Text('+',style: TextStyle(fontSize: 50))),

          ],
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final isMale;
  final int result;
  final int age;
  const BMIResult({super.key,
    required this.isMale,
    required this.result,
    required this.age,
  }
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('BMIResult'),
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_left),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Grand: ${isMale? 'Male' :'Fmale' }',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text('WIGHT: $result',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text('AGE: $age',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }
}

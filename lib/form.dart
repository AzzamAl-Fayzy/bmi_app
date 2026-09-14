import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class from extends StatefulWidget {
  @override
  State<from> createState() => _fromState();
}

class _fromState extends State<from> {
  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FROM'),
      ),
      body:Padding(padding: EdgeInsets.all(20),
      child: Form(
          key: _fromkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('ادخل الاسم'),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'الرجاء ادخل البريد';
                  }
                  return null;

                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('ادخل البريد'),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                   return 'الرجاء ادخل البريد';
                  }
                  if(!value.contains('@')){
                    return 'غير صالح';
                  }
                  return null;

                },
              ),

              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(_fromkey.currentState!.validate() && ){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('تم التحقق بنجاح!')),
                  );

                }
              },

                  child: Text('NEXT'),),
            ],

      ),
      ),
      ),

    );
  }
}

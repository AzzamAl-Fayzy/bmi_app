import 'package:flutter/material.dart';
import 'package:bmi_app/modules/massengar/massengar.dart';

import '../../shared/components/components.dart';
class Login extends StatelessWidget {
  var emailconrol=TextEditingController();
  var passwordcontrol=TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child:
        Padding(padding: EdgeInsetsGeometry.all(20),
          child:  Column(
            children: [
              Text('Login',
                style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height:20),

              TextFormField(
                controller: emailconrol,
                onFieldSubmitted:(String Value){
                  print(Value);
                },
                onChanged: (String value){
                  print(value);
                },
                keyboardType:TextInputType.emailAddress ,
                decoration:  InputDecoration(
                  labelText: 'Email Addres',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),




                ),


              ),
              SizedBox(height:20),
              TextFormField(
                controller: passwordcontrol,
                obscureText: true,
                keyboardType :TextInputType.visiblePassword ,
                decoration:  InputDecoration(
                  labelText: ' Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  suffix: Icon(Icons.remove_red_eye),




                ),

              ),
              SizedBox(height:20),
              defaultButton(
                text: 'NEXT',
                color: Colors.blue,
                onPressed: () {
                  print(emailconrol.text);
                  print(passwordcontrol.text);

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Massengar(),
                    ),
                        (route) => false,
                  );
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t hav' ),
                  TextButton(onPressed: (){

                  },
                    child: Text('Sgale'),),

                ],
              ),


            ],
          ),      ),


      ),

    );
  }
}

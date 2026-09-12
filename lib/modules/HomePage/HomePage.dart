import 'package:flutter/material.dart';
import 'package:bmi_app/modules/Menue/Menue.dart';
class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading:   IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){


          },

        ),
        title: Center(child:  Text('My App'),),
        actions: [  Icon(Icons.notifications)],


      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment:   CrossAxisAlignment.center,
      //   mainAxisSize: MainAxisSize.min,
      //   textDirection:TextDirection.ltr,
      //   verticalDirection: VerticalDirection.down,
      //   children: [
      //     Text('Login',style:TextStyle(color: Colors.black,fontSize: 30),),
      //
      //     SizedBox(height: 20,),
      //     TextField(
      //       decoration: InputDecoration(
      //         labelText: 'name',
      //         filled: true,
      //         fillColor: Colors.grey[222],
      //         border: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         // border: OutlineInputBorder(),
      //         prefixIcon: Icon(Icons.person),
      //       ),
      //     ),
      //     SizedBox(height: 20,),
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Password',
      //         border: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         // border: OutlineInputBorder(),
      //
      //     suffixIcon: Icon(Icons.password),
      //       filled: true,
      //         fillColor: Colors.grey[200],
      //     ),),
      //     SizedBox(height: 20,),
      //     // TextFieldTapRegion(child: Text('AZZAM')),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         ElevatedButton(onPressed: (){}, child: Text('Next'),),
      //         SizedBox(height: 30,),
      //         ElevatedButton(onPressed: (){}, child: Text('Back'),),
      //
      //
      //       ],
      //     ),
      //
      //
      //
      //
      //
      //
      //   ],
      //
      // ),
      // ),
      // bottomNavigationBar: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //     IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      //     IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
      //
      //
      //   ],
      //
      // ),



      body:
      Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(50),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  bottomEnd: Radius.circular(30),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                alignment: AlignmentGeometry.bottomCenter,
                children: [

                  Image(image: NetworkImage('https://mysyria.ca/wp-content/uploads/2025/08/WhatsApp-Image-2025-08-11-at-12.36.19-PM.jpeg'),),
                  Container(
                    color:  Colors.white.withOpacity(0.5),


                    child:
                    Text('My Love',
                      style: TextStyle(color: Colors.black,fontSize: 25),
                    ),
                  ),

                ],
              ),

            ),

          ),
          // Padding(
          //     padding: EdgeInsetsGeometry.all(50.0),
          //   child:Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     clipBehavior: Clip.antiAliasWithSaveLayer,
          //     padding: EdgeInsets.all(30),
          //     child: Stack(
          //       children: [
          //         Image(image: NetworkImage('https://mysyria.ca/wp-content/uploads/2025/08/WhatsApp-Image-2025-08-11-at-12.36.19-PM.jpeg')),
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           crossAxisAlignment: CrossAxisAlignment.stretch,
          //           textDirection: TextDirection.ltr,
          //           children: [
          //             Container(
          //               padding: EdgeInsets.symmetric(
          //                 vertical: 10,
          //                 horizontal: 20,
          //
          //               ) ,
          //
          //               color: Colors.white,
          //               child: Text('Werd is love', textAlign: TextAlign.right,
          //                 style: TextStyle(color: Colors.black,fontSize: 40),),
          //             ),
          //           ],
          //         ),
          //
          //       ],
          //     ),
          //   ),
          //
          //
          //
          // ),


        ],

      ),




    );
  }



}
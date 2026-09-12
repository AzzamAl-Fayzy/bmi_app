import 'package:flutter/material.dart';
class UserModel{
  final int id;
  final String name;
  final int phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class Modelmassengar extends StatelessWidget{
  List<UserModel> users=[
    UserModel(
      id: 1,
      name: 'Azzam',
      phone: 776212147,
    ),
    UserModel(
      id: 2,
      name: 'AzzamA',
      phone: 776212147,
    ),
    UserModel(
      id: 3,
      name: 'AzzamB',
      phone: 776212147,
    ),
    UserModel(
      id: 4,
      name: 'AzzamC',
      phone: 776212147,
    ),
    UserModel(
      id: 5,
      name: 'AzzamD',
      phone: 776212147,
    ),
    UserModel(
      id: 6,
      name: 'AzzamE',
      phone: 776212147,
    ),
    UserModel(
      id: 7,
      name: 'AzzamF',
      phone: 776212147,
    ),
    UserModel(
      id: 8,
      name: 'AzzamG',
      phone: 776212147,
    ),
    UserModel(
      id: 9,
      name: 'AzzamH',
      phone: 776212147,
    ),
    UserModel(
      id: 10,
      name: 'AzzamI',
      phone: 776212147,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor:Colors.blue ,
          title:Text('azzam'),
        ),
        body: ListView.separated(itemBuilder: (context,index)=>buildlist(users[index]),
            separatorBuilder:  (context,index)=>Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            itemCount: users.length)

    );
  }
  Widget buildlist(UserModel users)=>
      Padding(padding: EdgeInsetsGeometry.all(20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Text('${users.id}',style: TextStyle(color: Colors.white),),
            ),
            SizedBox(width: 20,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${users.name}',
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis ,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.bold
                  ),
                ),

                Text('${users.phone}',
                  style: TextStyle(color: Colors.grey),
                  maxLines: 1,
                  overflow:TextOverflow.ellipsis ,
                ),

              ],
            ),
            ),


          ],
        ),
      );

}
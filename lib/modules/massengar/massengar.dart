import 'package:flutter/material.dart';

class Massengar extends StatelessWidget {
  const Massengar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage:NetworkImage('https://mysyria.ca/wp-content/uploads/2025/08/WhatsApp-Image-2025-08-11-at-12.36.19-PM.jpeg'),
            ),
            SizedBox(width: 10,),
            Text('Chat'),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.camera),),
          ),
          IconButton(onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.edit),),
          ),
        ],
      ),


      body:Padding(padding:   EdgeInsets.all(20),
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),

                padding: const EdgeInsetsGeometry.all(5),
                child: Row(

                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,
                child: ListView.builder(itemBuilder: (context,index){
                  return buildChatItem();
                },
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                ),
              ),
              ListView.separated(itemBuilder: (context,index)=>buildStoryItem(),
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context,index)=> SizedBox(height: 20,)



              ),


            ],
          ),

        ),
      ),
    );
  }

  Widget buildChatItem()=>Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentGeometry.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://mysyria.ca/wp-content/uploads/2025/08/WhatsApp-Image-2025-08-11-at-12.36.19-PM.jpeg'),
              ),
              CircleAvatar(
                radius:7 ,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text(
              'Azzam',
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ],
      ),
      SizedBox(width: 10,),



    ],



  );
  Widget buildStoryItem()=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://mysyria.ca/wp-content/uploads/2025/08/WhatsApp-Image-2025-08-11-at-12.36.19-PM.jpeg',
                ),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
            ],
          ),

          SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Azzam AL-Fayzy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  SizedBox(width: 20),

                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blue,
                  ),

                  SizedBox(width: 5),

                  Text(
                    '11:05 pm',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );


}
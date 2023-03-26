import 'package:flutter/material.dart';

import 'homepage.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Griditems>items=[Griditems(icon:Icons.password, name: 'Whatsapp',image:"assets/whatsapp.png" ),
      Griditems(icon:Icons.palette, name: 'Instagram',image:"assets/insta.png"),
      Griditems(icon:Icons.calendar_today, name: 'Google',image:"assets/google.png"),
      Griditems(icon:Icons.person, name: 'Facebook',image:"assets/fb.png" ),

    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor:const  Color(0xff1e2735),
        backgroundColor:const  Color(0xfff3f8fe),
        actions: [
         IconButton(onPressed: (){}, icon:const  Icon(Icons.settings))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration:const  BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
    Color(0xfff3f8fe),
    Color(0xffdbe9f6)
    ]
    )
    ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const  Text("Applock",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xff1e2735),),)
              ,
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple
                  ),
                  child:const Text("Unlocked",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child:const Text("  Locked  ",style: TextStyle(color: Color(0xff1e2735),fontWeight: FontWeight.bold),),
                )
              ],),
              const SizedBox(height: 30,),
              const  Text("Recommended Apps",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff1e2735),),),
              const SizedBox(height: 30,),
             ListView.builder(
               physics:const  NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: items.length,
                 itemBuilder: (context,index){
               return  Container(height: 100,
                 width: double.infinity,
                 margin: const EdgeInsets.symmetric(vertical: 10),
                 padding:const  EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                   border: Border.all(color: Colors.grey.shade300),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade200,
                       offset:const Offset(0.0, 1.0), //(x,y)
                       blurRadius: 10.0,
                     ),
                   ],
                 ),
                 child: Row(children: [
                   CircleAvatar(
                     backgroundColor:const  Color(0xffc2d3ff),
                     backgroundImage: AssetImage(items[index].image.toString()),
                   ),
                   const SizedBox(width: 20,),
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                           Text(items[index].name,style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff1e2735),),),
                        const  SizedBox(height: 5,),
                         const  Text("Protected",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey,),),

                       ],),

                   ),
                 const   Icon(Icons.lock_open,color: Colors.grey,)
                 ],),

               );
             })
            ],
          ),
        ),

      ),

    );
  }
}


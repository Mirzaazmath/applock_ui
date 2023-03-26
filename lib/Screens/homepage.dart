import 'package:flutter/material.dart';

import 'detailscreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<Griditems>items=[Griditems(icon:Icons.password, name: 'Password type',),
      Griditems(icon:Icons.palette, name: 'Themes',),
      Griditems(icon:Icons.calendar_today, name: 'Fake Icon',),
      Griditems(icon:Icons.person, name: 'Intruder Selfie',),

    ];
    return Scaffold(
      body:  Container(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff5f4dcf),
                
                  Color(0xff442fae),
                  Color(0xff442fae)
                ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const   SizedBox(height: 60,),
              const  Text("Hello",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
              const Text("Protect your privacy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white54),),
             const  SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen()));
                },
                child: Container(
                  padding:const  EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:const  Color(0xff554fd3
                  ),
                ),
                  child: Row(children: [
                    Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text("App lock",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                        const Text("Nice to meet you",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white54),),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children:const  [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xffc2d3ff),
                                     backgroundImage: AssetImage("assets/fb.png"),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child:   CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffc2d3ff),
                                     backgroundImage: AssetImage("assets/google.png"),
                                  ),),
                                  Positioned(
                                    left: 40,
                                    child:   CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffc2d3ff),
                                      backgroundImage: AssetImage("assets/whatsapp.png"),
                                    ),),
                                  Positioned(
                                    left: 60,
                                    child:   CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffc2d3ff),
                                      backgroundImage: AssetImage("assets/insta.png"),
                                    ),)

                                ],
                              ),
                            )

                          ]
                        )
                      ],
                    )),
                   const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff7575d5),
                      child: Icon(Icons.lock),
                    )

                  ],),
                ),
              ),
            const   SizedBox(height: 20,),
              const  Text("More Features",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),



                GridView.builder(
                  physics:const  NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      mainAxisSpacing: 20,crossAxisSpacing: 20



                ), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                  color:const  Color(0xff554fd3),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:const  Color(0xff7575d5),
                          child: Icon(items[index].icon),
                        ),
                      const   SizedBox(height: 10,),
                        Text(items[index].name,style:const  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white54),)
                      ],
                    ),
                   
                  );
                }),


             ]
          ),
        ) ));
  }
}
class Griditems {
  String name;
  IconData icon;
  String? image;
  Griditems({required this.name,required this.icon,this.image});
}

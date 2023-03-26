import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'homepage.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           const  Spacer(),
            const Icon(Icons.fingerprint,size: 130,color: Color(0xff403a81),),
           const  Spacer(),
            const  Text("Protect your privacy",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xff404f66)),),
            const SizedBox(height: 30,),
            const Text("With AppLock you can set App passwords and block calls",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff404f66)),),
           const  Spacer(),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> _key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    elevation: 1,
                    text: "Start",
                    key: _key,
                    onSubmit: () {
                      Future.delayed(
                        Duration(seconds: 1),
                            () {
                              _key.currentState?.reset();
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                            }
                      );
                    },
                    sliderButtonIconSize: 20,
                    innerColor: const Color(0xff404f66) ,
                    outerColor: const  Color(0xffdbe9f6),
                  ),
                );
              },
            ),
                        const   Spacer(),
          ],
        ),
      ),
    );
  }
}

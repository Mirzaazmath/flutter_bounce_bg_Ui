import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart'hide LinearGradient ;
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const   BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff5e025d),
              Color(0xff20062f)
            ]
          )

        ),
        child: Stack(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const  [
              SizedBox(height: 260,
              child: RiveAnimation.asset('assets/bubble.riv'),),
                SizedBox(height: 100,
                  child: RiveAnimation.asset('assets/bubble.riv'),),
                SizedBox(height: 200,
                  child: RiveAnimation.asset('assets/bubble.riv'),),


              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 260,
                  width: 100,
                  child: RiveAnimation.asset('assets/bubble.riv'),),
                SizedBox(height: 100,
                  width: 150,
                  child: RiveAnimation.asset('assets/bubble.riv'),),
                SizedBox(height: 200,
                  width: 200,
                  child: RiveAnimation.asset('assets/bubble.riv'),),

              ],
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children:const  [

                  SizedBox(height: 160,
                    width: 100,
                    child: RiveAnimation.asset('assets/bubble.riv'),),
                  SizedBox(height: 160,
                    width: 100,
                    child: RiveAnimation.asset('assets/bubble.riv'),),
                  SizedBox(height: 100,
                    width: 50,
                    child: RiveAnimation.asset('assets/bubble.riv'),),
                  SizedBox(height: 200,
                    width: 150,
                    child: RiveAnimation.asset('assets/bubble.riv'),),

                ],
              ),
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: const  BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Color(0xffffdd2d),
                    blurRadius: 30,



                  ),],
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffffce05),
                      Color(0xfffe8d0f)
                    ]
                  ),

                  shape: BoxShape.circle
                ),

              ),
            ),
      Center(
        child: BackdropFilter(filter:ImageFilter.blur(sigmaY: 0,sigmaX: 0),
                child:  Container(
                  padding:const  EdgeInsets.all(20),
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.19),
                      border: Border.all(color: Colors.white),
                      // noise image to improve the glass effect
                      image:const  DecorationImage(
                          image: AssetImage("assets/blur.jpeg"),fit: BoxFit.fill,opacity: 0.08),

                      ),
                  child: Column(
                    children: [
                     const  Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize:36,color:Colors.white,)),
                   const  SizedBox(height: 30,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                        ),
                        child:const  Text("Email",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                      const  SizedBox(height: 30,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                        ),
                        child:const  Text("Password",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    const   Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color:const  Color(0xff5a0344),
                            borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xffffdd2d).withOpacity(0.6))
                        ),
                        child:Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                            boxShadow:const  [
                              BoxShadow(
                                color: Color(0xff811457),
                                spreadRadius: 0,
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child:const  Text("Submit",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                        ),
                      ),
                     const  SizedBox(height: 50,
                     ),
                    ],
                  ),
                  ),),
      )
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginPage.dart';
import 'loginstatefull.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
        useInheritedMediaQuery: true, home: SplashScreen()), // Wrap your app
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // const SplashScreen({super.key});

@override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginSFL() ,));
     });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.amberAccent,
        decoration: const BoxDecoration(
                                        // color: Colors.redAccent,
                                      //   image: DecorationImage(fit: BoxFit.,
                                      //   //image: NetworkImage("https://images.unsplash.com/32/Mc8kW4x9Q3aRR3RkP5Im_IMG_4417.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
                                      //  image: AssetImage("images/decor2.png")
                                        
                                      //   ),
                                        gradient: LinearGradient(colors: [Colors.amberAccent,Colors.lightGreen],begin: Alignment.bottomLeft,end: Alignment.topRight)
                                        
                                        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//this alignment decide where to keep the colomn childres
          children:  [
            // Image.asset("assets/images/logo.png",height: 100,width: 100,),
            Image.asset("icons/logo.png",height: 100,width: 100,),
            // Image.network("https://images.unsplash.com/32/Mc8kW4x9Q3aRR3RkP5Im_IMG_4417.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"),
            Text(
              "Decor",
              // style: TextStyle(
              //     fontFamily: 'OpenSans',
              //     fontSize: 32,
              //     color: Colors.amber),
      
              style: GoogleFonts.openSans(color: Colors.blueGrey,fontSize: 30,fontWeight: FontWeight.bold),//custom font
            ),
            // Icon(
            //   Icons.handshake,
            //   size: 30,
            //   color: Colors.amber,
            // )
            
          ],
        )),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screen/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });

    return Expanded(
      child: ListView(
        children: [
          Container(
            height: 800,
            color: Colors.blue,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Stack(
                  children: [
                    
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(top: 15)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25,20,0,0),
                      child: Text('Ecommerce',style: TextStyle(color: Colors.white,  fontSize: 25),),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25,50,9,9),
                      child: Text('Concept',style: TextStyle(color: Colors.white, fontSize: 25),),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

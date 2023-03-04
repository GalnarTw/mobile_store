import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';
import 'package:mobile_store/features/first/presentation/page/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlue,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: colorBlue,
        ),
      ),
      body: Container(
        height: 700,
        color: colorBlue,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: colorOrange,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                  child: Text(
                    'Ecommerce',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 50, 9, 9),
                  child: Text(
                    'Concept',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

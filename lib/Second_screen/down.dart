// import 'package:flutter/cupertino.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_store/Second_screen/bottom_color.dart';
import 'package:mobile_store/Second_screen/bottom_icon.dart';
import 'package:mobile_store/Second_screen/bottom_storage.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';

import '../FirstScreen/stars.dart';
import 'botom_chapter.dart';

// import '../screen/main_screen.dart';

Widget down() => Container(
      // height: 400,
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26),
          topRight: Radius.circular(26),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
              Text(
                'Galaxy Note 20 Ultra',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 32, 45, 101),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 0)),
              TextButton(
                onPressed: () {},
                clipBehavior: Clip.antiAlias,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 32, 45, 101),
                  ),
                  minimumSize: MaterialStatePropertyAll(Size(40, 40)),
                  overlayColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 255, 77, 0),
                  ),
                ),
                child: Icon(
                  Icons.favorite_border,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 40, 0)),
            ],
          ),
          Row(
            children: [
              StarIcons(),
              StarIcons(),
              StarIcons(),
              StarIcons(),
              StarIcons(),
            ],
          ),
          
              Chapter(),
            
          Row(
            children: [
              bottomIcon(
                Icons.memory,'Exynos 990',
              ),
              bottomIcon(
                Icons.photo_camera,'108+12mp'
              ),
              bottomIcon(
                Icons.memory,'8GB'
              ),
              bottomIcon(Icons.sd_card_rounded,'256GB'),
            ],
          ),
          Row(
            children: [Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 10),
              child: Text('Select color and capacity',style:TextStyle(color: colorBlue,fontSize: 16,fontWeight: FontWeight.w500) ,),
            )],
          ),
          Row(
            children: [
              CircleColor(
               
              ),
              Storage(),
              
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
}, style: ButtonStyle(
  
              minimumSize: MaterialStateProperty.all(
  
                const Size(355, 55),
  
              ),
  
              backgroundColor: MaterialStateProperty.all(
  
                  const Color.fromARGB(255, 255, 77, 0)),
  
              foregroundColor: MaterialStateProperty.all(
  
                  const Color.fromARGB(255, 32, 45, 101)),
  
              overlayColor: MaterialStateProperty.all(
  
                  const Color.fromARGB(255, 97, 97, 97)),
  
              shape: MaterialStateProperty.all(
  
                RoundedRectangleBorder(
  
                    borderRadius: BorderRadius.circular(12)),
  
              ),
  
          ), child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Add to Cart'),Padding(padding: EdgeInsets.only(left:90)), Text("1,500.00"),],)),
            )],
          ),
        ],
      ),
    );




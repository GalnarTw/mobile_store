import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_store/basket_screen/product.dart';

Widget basketBottom() => Column(
      children: [
        Container(
          height: 20,
          color: Color.fromARGB(0, 233, 30, 98),
          
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Container(
            height: 180,
            color: Colors.green,
            child: product(),
          ),
        ),
        Container(
          height: 120,
          color: Colors.red,
        ),
        Container(
          height: 120,
          color: Colors.pink,
        ),Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(height: 2,color: Colors.grey,),
        ),
        Container(
          height: 82,
          // color: Colors.b,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total',style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Delivery',style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@55555us',style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Free',style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(height: 2,color: Colors.grey,),
        ),
        Container(height: 100,
        
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ElevatedButton(onPressed: (){},
             style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                    Size(35, 35),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all(
                                          Colors.orange),
                                  // foregroundColor:
                                  //     MaterialStateProperty.all(
                                  //         Color.fromARGB(
                                  //             255, 32, 45, 101)),
                                  overlayColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 255, 77, 0)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // side:BorderSide(color: Colors.black,width: 0.5,style:BorderStyle.solid,strokeAlign: StrokeAlign.center),

                                      borderRadius:
                                          BorderRadius.circular(13),
                                    ),
                                  ),
                                ),
            
             child: Container(height: 1111,width: 1111,
              child: Center(child: Text('Checkout',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.w700),)),)),
          ),
        ),
      ],
    );

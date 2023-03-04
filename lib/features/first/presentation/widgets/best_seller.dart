// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';
import 'package:mobile_store/features/first/presentation/widgets/like.dart';

Widget PhoneCell(
  String pictures,
  int price,
  int disprice,
  String title,

) =>
    Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            width: 178,
            height: 220,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0, 0, 0, 0)),
                              like(),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(

                            pictures,

                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text('\$$price',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: colorBlue,),),
                        SizedBox(
                          width: 20,
                        ),
                        Text('\$$disprice',style: TextStyle(color: colorGreylight,decoration: TextDecoration.lineThrough),),
                      ],
                    ),
                    Text(title,style: TextStyle(fontSize: 10,color: colorBlue,),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

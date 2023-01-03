// import 'package:flutter/cupertino.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';
import 'package:mobile_store/cubit/market_cubit.dart';
import 'package:mobile_store/cubit/market_cubit_state.dart';
import 'package:mobile_store/features/second/data/models/second_model.dart';
import 'package:mobile_store/features/second/presentation/widgets/bottom_color.dart';
import 'package:mobile_store/features/second/presentation/widgets/bottom_icon.dart';
import 'package:mobile_store/features/second/presentation/widgets/bottom_storage.dart';
import 'stars.dart';
import 'botom_chapter.dart';

Widget down(int price) => Scaffold(
      body: BlocBuilder<MarketCubit, MarketCubitState>(
        builder: (context, state) {
          
          List<Second> marketSecond = [];
          if (state is MarketLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MarketLoaded) {
           
            marketSecond = state.SecondList;
          } else {}
          return Container(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(38, 28, 0, 28)),
                    Text(
                      marketSecond[0].title,
                      style: TextStyle(
                        fontFamily: 'Mark Pro',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: colorBlue,
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
                          colorBlue,
                        ),
                        minimumSize: MaterialStatePropertyAll(Size(40, 40)),
                        overlayColor: MaterialStatePropertyAll(
                          colorOrange,
                        ),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    
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
                Padding(
                  padding: const EdgeInsets.only(left:15,right: 10),
                  child: Row(
                    children: [
                      bottomIcon(
                        SvgPicture.asset(
                          'lib/assets/pictures/second_page/cpu.svg',
                          height: 28,
                          color: colorGreylight,
                        ),
                        marketSecond[0].CPU,
                      ),
                      bottomIcon(
                        SvgPicture.asset(
                          'lib/assets/pictures/second_page/camera.svg',
                          height: 22,
                          color: colorGreylight,
                        ),
                        marketSecond[0].camera,
                      ),
                      bottomIcon(
                        SvgPicture.asset(
                          'lib/assets/pictures/second_page/storage.svg',
                          height: 21,
                          color: colorGreylight,
                        ),
                        marketSecond[0].ssd,
                      ),
                      bottomIcon(
                        SvgPicture.asset(
                          'lib/assets/pictures/second_page/sdCard.svg',
                          height: 22,
                          color: colorGreylight,
                        ),
                        marketSecond[0].sd,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 10),
                      child: Text(
                        'Select color and capacity',
                        style: TextStyle(
                            color: colorBlue,
                            fontFamily: 'Mark Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleColor(),
                    Storage(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                              const Size(355, 55),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                 colorOrange),
                            foregroundColor: MaterialStateProperty.all(
                                 colorBlue),
                            overlayColor: MaterialStateProperty.all(
                                colorGrey),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Add to Cart',style: TextStyle(fontSize: 20,color: colorWhite,fontFamily: 'Mark Pro',fontWeight: FontWeight.w700),),
                              Padding(padding: EdgeInsets.only(left: 61)),
                              Text('\$$price', style: TextStyle(fontSize: 20,color: colorWhite,fontFamily: 'Mark Pro',fontWeight: FontWeight.w700),),
                            ],
                          )),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );

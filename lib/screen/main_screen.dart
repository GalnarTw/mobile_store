// ignore_for_file: library_private_types_in_public_api, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/FirstScreen/hot_sales.dart';
import 'package:mobile_store/Second_screen/gdgsdf.dart';
import 'package:mobile_store/feature/domain/entities/person_entity.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';
import '../FirstScreen/select_category.dart';
import '../FirstScreen/best_seller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../feature/presentation/bloc/market_bloc.dart';
import '../feature/presentation/bloc/market_event.dart';
import '../feature/presentation/bloc/market_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FixedExtentScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: const Color.fromARGB(255, 236, 236, 236),
        ),
      ),
      body: 
      // BlocProvider<MarketBloc, MarketState>(
      //   builder: (context, state) {
      //     List<PhoneMarketEntity> MarketPhone = [];
      //     if (state is MarketLoading) {
      //       return Center(child: CircularProgressIndicator());
      //     } else if (state is MarketLoaded) {
      //       MarketPhone = state.phoneMarket;
      //     }

          // return 
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Row(
                        children: const [
                          Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                          Text('Select Category',
                              style: TextStyle(
                                fontFamily: 'Mark Pro',
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: colorBlue,
                              )),
                          Padding(padding: EdgeInsets.fromLTRB(160, 50, 0, 0)),
                          Text(
                            'viev all',
                            style: TextStyle(
                                color: colorOrange),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      height: 90, // высота
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          IconsCircle(),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Text(
                        'Hot sales',
                        style: TextStyle(
fontFamily:'Mark Pro',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: colorBlue,
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      height: 270,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pghCart.length,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          final Text = NamePhone[index];
                          final PhoneCart = pghCart[index];
                          return Iphone12(
                            PhoneCart,
                            index,
                            Text,
                          );
                        },
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 236, 236, 236),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                              Text('Best Seller',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: colorBlue,
                                  )),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(175, 0, 0, 0)),
                              Text(
                                'see more',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 201, 117, 43),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 236, 236, 236),
                      height: 500,
                      child: 
                      // ЛистВью с Параметрами по 2 по 3 в колонку
                      // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder) 
                      Column(
                        children: [
                          Row(
                            children: [
                              // PhoneCell(, 3),
                              PhoneCell(
                                  'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
                                  1),
                              PhoneCell(
                                  'https://mi92.ru/wp-content/uploads/2020/03/smartfon-xiaomi-mi-10-pro-12-256gb-global-version-starry-blue-sinij-1.jpg',
                                  1),
                            ],
                          ),
                          Row(children: [
                            PhoneCell(
                                'https://www.benchmark.rs/assets/img/news/edge1.jpg',
                                1),
                            PhoneCell(
                                'https://mi92.ru/wp-content/uploads/2020/03/smartfon-xiaomi-mi-10-pro-12-256gb-global-version-starry-blue-sinij-1.jpg',
                                1),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      //   },
      // ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: GNav(
            backgroundColor: colorBlue,
            color: Colors.white70,
            activeColor: Colors.white,
            gap: 10,
            padding: EdgeInsets.all(15),
            tabs: [
              GButton(
                icon: Icons.circle,
                text: 'Explorer',
                iconSize: 15,
              ),
              GButton(
                icon: Icons.shopping_bag_outlined,
                text: 'Shop',
                iconSize: 25,
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
                text: 'like',
                iconSize: 25,
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Person',
                iconSize: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

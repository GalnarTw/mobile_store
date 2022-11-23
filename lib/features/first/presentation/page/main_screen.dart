// ignore_for_file: library_private_types_in_public_api, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';
import 'package:mobile_store/cubit/market_cubit.dart';
import 'package:mobile_store/cubit/market_cubit_state.dart';
import 'package:mobile_store/features/first/data/models/first_model.dart';
import 'package:mobile_store/features/first/presentation/widgets/hot_sales.dart';
import 'package:mobile_store/features/second/presentation/page/phone_screen.dart';
import '../widgets/select_category.dart';
import '../widgets/best_seller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 100),
                child: Row(children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: colorOrange,
                  ),
                  Text(
                    'Zihutanejo,Gro',
                    style: TextStyle(color: colorBlue),
                  ),
                  SvgPicture.asset(
                    'lib/assets/pictures/main_page/turnDown.svg',
                    color: colorGrey,
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'lib/assets/pictures/main_page/funnel.svg',
                  color: colorBlue,
                ),
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Color.fromARGB(255, 236, 236, 236),
        ),
      ),
      body: BlocBuilder<MarketCubit, MarketCubitState>(
        builder: (context, state) {
          List<HomeStore> marketHomeStore = [];
          List<BestSeller> marketBestSeller = [];
          if (state is MarketLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MarketLoaded) {
            marketHomeStore = state.homeStoreList;
            marketBestSeller = state.bestSellerList;
          } else {}
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                            child: Text('Select Category',
                                style: TextStyle(
                                  fontFamily: 'Mark Pro',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: colorBlue,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 33, 0),
                            child: Text(
                              'viev all',
                              style: TextStyle(color: colorOrange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      height: 120,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(32, 0, 11, 0),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(25)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide.none,
                                        gapPadding: 23),
                                    labelText: 'Serch',
                                    icon: Icon(
                                      Icons.search,
                                      color: colorOrange,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
                            child: TextButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                  const Size(34, 34),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(colorOrange),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1110))),
                              ),
                              child: SvgPicture.asset(
                                  'lib/assets/pictures/main_page/qr.svg'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                            child: Text(
                              'Hot sales',
                              style: TextStyle(
                                fontFamily: 'Mark Pro',
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: colorBlue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 33, 0),
                            child: Text(
                              'see more',
                              style: TextStyle(color: colorOrange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      height: 270,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: marketHomeStore.length,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return Iphone12(
                            marketHomeStore[index].picture,
                            index,
                            marketHomeStore[index].title,
                            marketHomeStore[index].is_new
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(0)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PhonePage()),
                                  );
                                },
                                child: PhoneCell(
                                  marketBestSeller[0].picture,
                                  marketBestSeller[0].price_without_discount,
                                  marketBestSeller[0].discount_price,
                                  marketBestSeller[0].title,
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(0)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PhonePage()),
                                  );
                                },
                                child: PhoneCell(
                                  marketBestSeller[1].picture,
                                  marketBestSeller[1].price_without_discount,
                                  marketBestSeller[1].discount_price,
                                  marketBestSeller[1].title,
                                ),
                              ),
                            ],
                          ),
                          Row(children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PhonePage()),
                                );
                              },
                              child: PhoneCell(
                                marketBestSeller[3].picture,
                                marketBestSeller[3].price_without_discount,
                                marketBestSeller[3].discount_price,
                                marketBestSeller[3].title,
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PhonePage()),
                                );
                              },
                              child: PhoneCell(
                                marketBestSeller[0].picture,
                                marketBestSeller[0].price_without_discount,
                                marketBestSeller[0].discount_price,
                                marketBestSeller[0].title,
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
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

 
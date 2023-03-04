//

// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';
import 'package:mobile_store/cubit/market_cubit.dart';
import 'package:mobile_store/features/basket/presentation/page/basket.dart';
import 'package:mobile_store/features/first/presentation/page/main_screen.dart';
import 'package:mobile_store/features/second/data/models/second_model.dart';
import 'package:mobile_store/features/second/presentation/widgets/down.dart';
import 'package:mobile_store/features/second/presentation/widgets/phone_cart.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../cubit/market_cubit_state.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 46,
                      color: Color.fromARGB(255, 236, 236, 236),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(13, 0, 0, 0)),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                              );
                            },
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
                              minimumSize:
                                  MaterialStatePropertyAll(Size(40, 40)),
                              overlayColor: MaterialStatePropertyAll(
                                colorOrange,
                              ),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 0)),
                          Text(
                            AppLocalizations.of(context)!.detail,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: colorBlue,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(60, 0, 0, 0)),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BasketPage()),
                              );
                            },
                            clipBehavior: Clip.antiAlias,
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.0),
                                ),
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                colorOrange,
                              ),
                              minimumSize:
                                  MaterialStatePropertyAll(Size(25, 25)),
                              overlayColor: MaterialStatePropertyAll(colorBlue),
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 450,
                      width: 800,
                      color: Color.fromARGB(255, 236, 236, 236),
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          enableInfiniteScroll: false,
                          height: 700,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        ),
                        itemCount: marketSecond[0].images.length, 
                        itemBuilder: (context, index, realIndex) {
                          
                          return phoneSlide(
                             marketSecond[0].images[index],
                          
                            );
                        },
                      ),
                    ),
                    Container(
                      height: 410,
                      color: Color.fromARGB(255, 236, 236, 236),
                      child: down(marketSecond[0].price,),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

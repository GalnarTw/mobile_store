import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';
import 'package:mobile_store/cubit/market_cubit.dart';
import 'package:mobile_store/cubit/market_cubit_state.dart';
import 'package:mobile_store/features/basket/data/models/basket_model.dart';
import 'package:mobile_store/features/second/presentation/page/phone_screen.dart';
import '../widgets/basket.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MarketCubit, MarketCubitState>(
        builder: (context, state, ) {
          List<Three> marketThree = [];
          List<Basket> marketBasket = [];
          if (state is MarketLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MarketLoaded) {
            marketThree = state.ThreeList;
            marketBasket = state.BasketList;
          } else {}

          
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 46,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.fromLTRB(33, 0, 0, 0)),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PhonePage()),
                                );
                              },
                              clipBehavior: Clip.antiAlias,
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                ),
                                backgroundColor: const MaterialStatePropertyAll(
                                  colorBlue,
                                ),
                                minimumSize:
                                    const MaterialStatePropertyAll(Size(40, 40)),
                                overlayColor: const MaterialStatePropertyAll(
                                  colorOrange,
                                ),
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_left,
                                size: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.fromLTRB(100, 0, 0, 0)),
                             Text(
                              AppLocalizations.of(context)!.address,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: colorBlue,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                            TextButton(
                              onPressed: () {},
                              clipBehavior: Clip.antiAlias,
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                ),
                                backgroundColor: const MaterialStatePropertyAll(
                                  colorOrange,
                                ),
                                minimumSize:
                                    const MaterialStatePropertyAll(Size(25, 25)),
                                overlayColor:
                                    const MaterialStatePropertyAll(colorBlue),
                              ),
                              child: const Icon(
                                Icons.location_on_outlined,
                                size: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(42, 0, 0, 0),
                            child: Text(
                              AppLocalizations.of(context)!.myCart,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: colorBlue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: Container (
                        
                        decoration: const BoxDecoration(
                            color: colorBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child:
                            basketBottom(context,
                              // marketBasket[0].images,
                              marketThree[0].basket[0].images,
                              marketThree[0].total,
                              marketThree[0].delivery,
                              marketThree[0].basket[0].price,
                              marketThree[0].basket[0].title,
                              marketThree[0].basket[1].images,
                              marketThree[0].basket[1].price,
                              marketThree[0].basket[1].title,
                        ),
                      ),
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

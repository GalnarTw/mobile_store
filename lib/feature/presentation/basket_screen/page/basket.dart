import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/feature/presentation/second_screen/page/phone_screen.dart';
import '../widgets/basket.dart';
import '../../../data/models/market_model.dart';
import '../../cubit/market_cubit.dart';
import '../../cubit/market_cubit_state.dart';
import '../../widgets/сolors/my_colors.dart';

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
                            const Padding(padding: EdgeInsets.fromLTRB(120, 0, 0, 0)),
                            const Text(
                              'Add address',
                              style: TextStyle(
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
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(42, 0, 0, 0),
                            child: Text(
                              'My Cart',
                              style: TextStyle(
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
                            basketBottom(
                              marketBasket[0].images,
                              marketThree[0].total,
                              marketThree[0].delivery,
                              marketBasket[0].price,
                              marketBasket[0].title,
                              marketBasket[1].images,
                              marketBasket[1].price,
                              marketBasket[1].title,
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

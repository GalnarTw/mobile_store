import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../feature/domain/entities/person_entity.dart';
import '../feature/presentation/bloc/market_bloc.dart';
import '../feature/presentation/bloc/market_event.dart';
import '../feature/presentation/bloc/market_state.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider<PhoneBloc, PhoneState>(child: );
    return 
    // BlocProvider<MarketBloc>(
      // create: (context)=>MarketBloc() ..add(MarketEvent()),
    // child:
     BlocBuilder<MarketBloc, MarketState>(
      builder: ((context, state) {
        // final bloc=BlocProvider.of<MarketBloc>(context);
        // List<PhoneMarketEntity> phoneMarket = [];
        // if (state is MarketLoading) {
        //   return Center(child: CircularProgressIndicator());
        // } else if (state is MarketLoaded) {
        //   phoneMarket = state.phoneMarket;
        //   print(phoneMarket);
        //   print(phoneMarket.length);
        // }
        // print(phoneMarket);
        // print(phoneMarket.length);
        return Scaffold(
          body: Container(
            child: Center(
              // child:
            //  Text('${phoneMarket.length}')
             ),
          ),
        );
      }),
    // )
    );
  }
}

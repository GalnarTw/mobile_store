// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/screen/basket.dart';
import 'package:mobile_store/screen/jggfdjmhtgdjtyhd.dart';
import 'package:mobile_store/screen/main_screen.dart';
import 'package:mobile_store/splash_screen/splash_screen.dart';
import '/screen/phone_screen.dart';
import 'feature/presentation/bloc/market_bloc.dart';
import 'feature/presentation/cubit/market_cubit.dart';
import 'locator_service.dart'  as di;
import 'locator_service.dart';
// import 'screen/main_screen.dart';

  void main() async { 
    await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MarketCubit>(
              create: (context) => sl<MarketCubit>()..loadMarket()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}
       
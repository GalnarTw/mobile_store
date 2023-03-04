
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/features/first/presentation/page/splash_screen.dart';
import 'cubit/market_cubit.dart';
import 'locator_service.dart'  as di;
import 'locator_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:mobile_store/component/map/map.dart';
  void main() async {
    await di.init();
  runApp( const MyApp(

  ));
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
        child:  const MaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: [
            Locale('en',''),
            Locale('ru',''),

          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ]
          ,
          home: SplashScreen(),
        )
        );
  }
}


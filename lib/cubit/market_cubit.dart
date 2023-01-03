// ignore_for_file: unused_local_variable, non_constant_identifier_names, constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/error/failure.dart';
import '../features/basket/data/models/basket_model.dart';
import '../features/basket/domain/usecases/get_basket.dart';
import '../features/basket/domain/usecases/get_three.dart';
import '../features/first/data/models/first_model.dart';
import '../features/first/domain/usecases/get_best_sellers.dart';
import '../features/first/domain/usecases/get_home_store.dart';
import '../features/second/data/models/second_model.dart';
import '../features/second/domain/usecases/get_second.dart';
import 'market_cubit_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class MarketCubit extends Cubit<MarketCubitState> {
  final GetBestSeller getBestSeller;
  final GetHomeStore getHomeStore;
  final GetThree getThree;
  final GetSecond getSecond;
  final GetBasket getBasket;
  MarketCubit({
    required this.getThree,
    required this.getSecond,
    required this.getBasket,
    required this.getHomeStore,
    required this.getBestSeller,
  }) : super(MarketEmpty());

  void loadMarket() async {
    if (state is MarketLoading) return;

    final currentState = state;
    List<BestSeller> BestPhone = [];
    List<HomeStore> HomePhone = [];
    List<Second> SecondPhone = [];
    List<Three> ThreePhone = [];
    List<Basket> BasketPhone = [];

emit(MarketLoading());
    final failureOrMarketHome = await getHomeStore();
    final failureOrMarketBest = await getBestSeller();
    final failureOrMarketSecond = await getSecond();
    final failureOrMarketThree = await getThree();
    final failureOrMarketBasket = await getBasket();

emit(MarketLoaded(HomePhone, BestPhone, SecondPhone, ThreePhone, BasketPhone,));
    failureOrMarketHome.fold(
      (error) => emit(MarketError(message: _mapFailureToMessage(error))),
      (character) => HomePhone.addAll(character),
    );

    failureOrMarketBest.fold(
      (error) => emit(MarketError(message: _mapFailureToMessage(error))),
      (character) => BestPhone.addAll(character),
    );
 failureOrMarketSecond.fold(
      (error) => emit(MarketError(message: _mapFailureToMessage(error))),
      (character) => SecondPhone.addAll(character),
    );
failureOrMarketThree.fold(
      (error) => emit(MarketError(message: _mapFailureToMessage(error))),
      (character) => ThreePhone.addAll(character),
    );

failureOrMarketBasket.fold(
      (error) => emit(MarketError(message: _mapFailureToMessage(error))),
      (character) => BasketPhone.addAll(character),
    );

    emit(MarketLoaded(HomePhone, BestPhone, SecondPhone, ThreePhone, BasketPhone,));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
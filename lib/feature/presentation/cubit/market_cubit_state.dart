import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';
import 'package:mobile_store/feature/data/models/market_model.dart';

import '../../domain/entities/market_entity.dart';

abstract class MarketCubitState extends Equatable {
  const MarketCubitState();

  @override
  List<Object> get props => [];
}

class MarketEmpty extends MarketCubitState {
  @override
  List<Object> get props => [];
}

class MarketLoading extends MarketCubitState {
  // final List<PhoneMarketEntity> oldMarketList;
  // final bool isFirstFetch;

  // MarketLoading(this.oldMarketList, {this.isFirstFetch = false});

  // @override
  // List<Object> get props => [oldMarketList];
  
}

class MarketLoaded extends MarketCubitState {
  final List<HomeStore> homeStoreList;
  final List<BestSeller> bestSellerList;
final List<Second> SecondList;
final List<Three> ThreeList;
final List<Basket> BasketList;



  MarketLoaded(this.homeStoreList, this.bestSellerList, this.SecondList, this.ThreeList, this.BasketList);

  @override
  List<Object> get props => [homeStoreList,bestSellerList,SecondList,ThreeList,BasketList,];
 
}

class MarketError extends MarketCubitState {
  final String message;

  MarketError({required this.message});
  
  @override
  List<Object> get props => [message];
}
// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

import '../features/basket/data/models/basket_model.dart';
import '../features/first/data/models/first_model.dart';
import '../features/second/data/models/second_model.dart';

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
}

class MarketLoaded extends MarketCubitState {
final List<HomeStore> homeStoreList;
final List<BestSeller> bestSellerList;
final List<Second> SecondList;
final List<Three> ThreeList;
final List<Basket> BasketList;



  const MarketLoaded(this.homeStoreList, this.bestSellerList, this.SecondList, this.ThreeList, this.BasketList);

  @override
  List<Object> get props => [homeStoreList,bestSellerList,SecondList,ThreeList,BasketList,];
 
}

class MarketError extends MarketCubitState {
  final String message;

  const MarketError({required this.message});
  
  @override
  List<Object> get props => [message];
}
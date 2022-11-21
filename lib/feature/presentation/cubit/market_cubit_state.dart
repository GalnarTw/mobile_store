import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';

import '../../domain/entities/person_entity.dart';

abstract class MarketState extends Equatable {
  const MarketState();

  @override
  List<Object> get props => [];
}

class MarketEmpty extends MarketState {
  @override
  List<Object> get props => [];
}

class MarketLoading extends MarketState {
  final List<PhoneMarketEntity> oldMarketList;
  final bool isFirstFetch;

  MarketLoading(this.oldMarketList, {this.isFirstFetch = false});

  @override
  List<Object> get props => [oldMarketList];
  
}

class MarketLoaded extends MarketState {
  final List<PhoneMarketEntity> personsList;

  MarketLoaded(this.personsList);

  @override
  List<Object> get props => [personsList];
}

class MarketError extends MarketState {
  final String message;

  MarketError({required this.message});
  
  @override
  List<Object> get props => [message];
}
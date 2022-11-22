// // import 'dart:html';

// import 'package:equatable/equatable.dart';
// import 'package:mobile_store/feature/data/models/market_model.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../domain/entities/market_entity.dart';

// abstract class MarketState extends Equatable {
//   const MarketState();
//   @override
//   List<Object?> get props => [];
// }

// class MarketEmpty extends MarketState {}

// class MarketLoading extends MarketState {}

// class MarketLoaded extends MarketState {
//   final List<BestSeller> phoneMarket;

//   const MarketLoaded({required this.phoneMarket});
//   @override
//   List<Object?> get props => [phoneMarket];
// }

// class MarketError extends MarketState {
// final String message;

//   const MarketError({required this.message});
//   @override
//   List<Object?> get props => [message];
// }

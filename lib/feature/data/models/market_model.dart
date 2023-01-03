// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/market_entity.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

 class PhoneMarketModel extends PhoneMarketEntity {
  List<HomeStore>? homeStore;
  List<BestSeller>? bestSeller;
  List<Second>? second;
  List<Three>? three;
  PhoneMarketModel({
    this.homeStore,
    this.bestSeller,
    this.second,
    this.three,
  });

  static fromJson(decode) {}
}

@freezed
class HomeStore  with _$HomeStore {
  const factory HomeStore(
      {required int id,
      @Default(false) bool is_new,
      required String title,
      required String subtitle,
      required String picture,
      required bool is_buy}) = _HomeStore;
  factory HomeStore.fromJson(Map<String, dynamic> json) =>
      _$HomeStoreFromJson(json);
}

@freezed
class BestSeller  with _$BestSeller {
  const factory BestSeller(
      {required int id,
      required bool is_favorites,
      required String title,
      required int price_without_discount,
      required int discount_price,
      required String picture,}) = _BestSeller;

  factory BestSeller.fromJson(Map<String, dynamic> json) =>
      _$BestSellerFromJson(json);
}

@freezed
class Second  with _$Second {
  const factory Second({
    required String CPU,
    required String camera,
    required List<String> capacity,
    required List<String> color,
    required String id,
    required List<String> images,
    required bool isFavorites,
    required int price,
    required double rating,
    required String sd,
    required String ssd,
    required String title,
  }) = _Second;

  factory Second.fromJson(Map<String, dynamic> json) => _$SecondFromJson(json);
}

@freezed
class Three  with _$Three {
  const factory Three({
    required List<Basket> basket,
    required String delivery,
    required String id,
    required int total,
  }) = _Three;

  factory Three.fromJson(Map<String, dynamic> json) => _$ThreeFromJson(json);
}

@freezed
class Basket  with _$Basket {
  const factory Basket({
    required int id,
    required String images,
    required int price,
    required String title,
  }) = _Basket;
  factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);
}
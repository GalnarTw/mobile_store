// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/market_entity.dart';

part 'first_model.freezed.dart';
part 'first_model.g.dart';

 class PhoneMarketModel extends PhoneMarketEntity {
  List<HomeStore>? homeStore;
  List<BestSeller>? bestSeller;
  PhoneMarketModel({
    this.homeStore,
    this.bestSeller,
    
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


// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/market_entity.dart';

part 'first_model.freezed.dart';
part 'first_model.g.dart';


class PhoneMarketModelHome extends PhoneMarketEntity {
  List<HomeStore>? homeStore;
  List<BestSeller>? bestSeller;
  PhoneMarketModelHome({
    this.homeStore,
    this.bestSeller,
  });

  PhoneMarketModelHome.fromJson(Map<String, dynamic> json) {
    if (json['home_store'] != null) {
      homeStore = <HomeStore>[];
      json['home_store'].forEach((v) {
        homeStore!.add(HomeStore.fromJson(v));
      });
    }
    if (json['best_seller'] != null) {
      bestSeller = <BestSeller>[];
      json['best_seller'].forEach((v) {
        bestSeller!.add(BestSeller.fromJson(v));
      });
    }
  }
}

@freezed
class HomeStore with _$HomeStore {
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
class BestSeller with _$BestSeller {
  const factory BestSeller({
    required int id,
    required bool is_favorites,
    required String title,
    required int price_without_discount,
    required int discount_price,
    required String picture,
  }) = _BestSeller;

  factory BestSeller.fromJson(Map<String, dynamic> json) =>
      _$BestSellerFromJson(json);
}

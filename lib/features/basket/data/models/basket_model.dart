// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/market_entity.dart';
part 'basket_model.freezed.dart';
part 'basket_model.g.dart';

 class PhoneMarketModel extends PhoneMarketEntity {
 
  List<Three>? three;
  PhoneMarketModel({
  
    this.three,
  });

  static fromJson(decode) {}
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

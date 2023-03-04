// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/market_entity.dart';

part 'second_model.freezed.dart';
part 'second_model.g.dart';

 class SecondMarketModel extends SecondMarketEntity {
  
  List<Second>? second;
  
  SecondMarketModel({
    
    this.second,
    
  });

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


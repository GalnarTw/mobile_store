// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeStore _$$_HomeStoreFromJson(Map<String, dynamic> json) => _$_HomeStore(
      id: json['id'] as int,
      is_new: json['is_new'] as bool? ?? false,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      is_buy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$$_HomeStoreToJson(_$_HomeStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.is_new,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_buy': instance.is_buy,
    };

_$_BestSeller _$$_BestSellerFromJson(Map<String, dynamic> json) =>
    _$_BestSeller(
      id: json['id'] as int,
      is_favorites: json['is_favorites'] as bool,
      title: json['title'] as String,
      price_without_discount: json['price_without_discount'] as int,
      discount_price: json['discount_price'] as int,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_BestSellerToJson(_$_BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.is_favorites,
      'title': instance.title,
      'price_without_discount': instance.price_without_discount,
      'discount_price': instance.discount_price,
      'picture': instance.picture,
    };

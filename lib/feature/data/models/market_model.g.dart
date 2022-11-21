// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeStore _$$_HomeStoreFromJson(Map<String, dynamic> json) => _$_HomeStore(
      id: json['id'] as int,
      is_New: json['is_New'] as bool,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      is_Buy: json['is_Buy'] as bool,
    );

Map<String, dynamic> _$$_HomeStoreToJson(_$_HomeStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_New': instance.is_New,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_Buy': instance.is_Buy,
    };

_$_BestSeller _$$_BestSellerFromJson(Map<String, dynamic> json) =>
    _$_BestSeller(
      id: json['id'] as int,
      isFavorites: json['isFavorites'] as bool,
      title: json['title'] as String,
      priceWithoutDiscount: json['priceWithoutDiscount'] as int,
      discountPrice: json['discountPrice'] as int,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_BestSellerToJson(_$_BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isFavorites': instance.isFavorites,
      'title': instance.title,
      'priceWithoutDiscount': instance.priceWithoutDiscount,
      'discountPrice': instance.discountPrice,
      'picture': instance.picture,
    };

_$_Second _$$_SecondFromJson(Map<String, dynamic> json) => _$_Second(
      cPU: json['cPU'] as String,
      camera: json['camera'] as String,
      capacity:
          (json['capacity'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorites: json['isFavorites'] as bool,
      price: json['price'] as int,
      rating: (json['rating'] as num).toDouble(),
      sd: json['sd'] as String,
      ssd: json['ssd'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_SecondToJson(_$_Second instance) => <String, dynamic>{
      'cPU': instance.cPU,
      'camera': instance.camera,
      'capacity': instance.capacity,
      'color': instance.color,
      'id': instance.id,
      'images': instance.images,
      'isFavorites': instance.isFavorites,
      'price': instance.price,
      'rating': instance.rating,
      'sd': instance.sd,
      'ssd': instance.ssd,
      'title': instance.title,
    };

_$_Three _$$_ThreeFromJson(Map<String, dynamic> json) => _$_Three(
      basket: (json['basket'] as List<dynamic>)
          .map((e) => Basket.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] as String,
      id: json['id'] as String,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_ThreeToJson(_$_Three instance) => <String, dynamic>{
      'basket': instance.basket,
      'delivery': instance.delivery,
      'id': instance.id,
      'total': instance.total,
    };

_$_Basket _$$_BasketFromJson(Map<String, dynamic> json) => _$_Basket(
      id: json['id'] as int,
      images: json['images'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_BasketToJson(_$_Basket instance) => <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'price': instance.price,
      'title': instance.title,
    };

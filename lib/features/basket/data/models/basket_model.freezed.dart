// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Three _$ThreeFromJson(Map<String, dynamic> json) {
  return _Three.fromJson(json);
}

/// @nodoc
mixin _$Three {
  List<Basket> get basket => throw _privateConstructorUsedError;
  String get delivery => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreeCopyWith<Three> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreeCopyWith<$Res> {
  factory $ThreeCopyWith(Three value, $Res Function(Three) then) =
      _$ThreeCopyWithImpl<$Res, Three>;
  @useResult
  $Res call({List<Basket> basket, String delivery, String id, int total});
}

/// @nodoc
class _$ThreeCopyWithImpl<$Res, $Val extends Three>
    implements $ThreeCopyWith<$Res> {
  _$ThreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basket = null,
    Object? delivery = null,
    Object? id = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<Basket>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThreeCopyWith<$Res> implements $ThreeCopyWith<$Res> {
  factory _$$_ThreeCopyWith(_$_Three value, $Res Function(_$_Three) then) =
      __$$_ThreeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Basket> basket, String delivery, String id, int total});
}

/// @nodoc
class __$$_ThreeCopyWithImpl<$Res> extends _$ThreeCopyWithImpl<$Res, _$_Three>
    implements _$$_ThreeCopyWith<$Res> {
  __$$_ThreeCopyWithImpl(_$_Three _value, $Res Function(_$_Three) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basket = null,
    Object? delivery = null,
    Object? id = null,
    Object? total = null,
  }) {
    return _then(_$_Three(
      basket: null == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<Basket>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Three with DiagnosticableTreeMixin implements _Three {
  const _$_Three(
      {required final List<Basket> basket,
      required this.delivery,
      required this.id,
      required this.total})
      : _basket = basket;

  factory _$_Three.fromJson(Map<String, dynamic> json) =>
      _$$_ThreeFromJson(json);

  final List<Basket> _basket;
  @override
  List<Basket> get basket {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basket);
  }

  @override
  final String delivery;
  @override
  final String id;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Three(basket: $basket, delivery: $delivery, id: $id, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Three'))
      ..add(DiagnosticsProperty('basket', basket))
      ..add(DiagnosticsProperty('delivery', delivery))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Three &&
            const DeepCollectionEquality().equals(other._basket, _basket) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_basket), delivery, id, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreeCopyWith<_$_Three> get copyWith =>
      __$$_ThreeCopyWithImpl<_$_Three>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThreeToJson(
      this,
    );
  }
}

abstract class _Three implements Three {
  const factory _Three(
      {required final List<Basket> basket,
      required final String delivery,
      required final String id,
      required final int total}) = _$_Three;

  factory _Three.fromJson(Map<String, dynamic> json) = _$_Three.fromJson;

  @override
  List<Basket> get basket;
  @override
  String get delivery;
  @override
  String get id;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_ThreeCopyWith<_$_Three> get copyWith =>
      throw _privateConstructorUsedError;
}

Basket _$BasketFromJson(Map<String, dynamic> json) {
  return _Basket.fromJson(json);
}

/// @nodoc
mixin _$Basket {
  int get id => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketCopyWith<Basket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCopyWith<$Res> {
  factory $BasketCopyWith(Basket value, $Res Function(Basket) then) =
      _$BasketCopyWithImpl<$Res, Basket>;
  @useResult
  $Res call({int id, String images, int price, String title});
}

/// @nodoc
class _$BasketCopyWithImpl<$Res, $Val extends Basket>
    implements $BasketCopyWith<$Res> {
  _$BasketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? price = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketCopyWith<$Res> implements $BasketCopyWith<$Res> {
  factory _$$_BasketCopyWith(_$_Basket value, $Res Function(_$_Basket) then) =
      __$$_BasketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String images, int price, String title});
}

/// @nodoc
class __$$_BasketCopyWithImpl<$Res>
    extends _$BasketCopyWithImpl<$Res, _$_Basket>
    implements _$$_BasketCopyWith<$Res> {
  __$$_BasketCopyWithImpl(_$_Basket _value, $Res Function(_$_Basket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? price = null,
    Object? title = null,
  }) {
    return _then(_$_Basket(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Basket with DiagnosticableTreeMixin implements _Basket {
  const _$_Basket(
      {required this.id,
      required this.images,
      required this.price,
      required this.title});

  factory _$_Basket.fromJson(Map<String, dynamic> json) =>
      _$$_BasketFromJson(json);

  @override
  final int id;
  @override
  final String images;
  @override
  final int price;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Basket(id: $id, images: $images, price: $price, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Basket'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Basket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, images, price, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketCopyWith<_$_Basket> get copyWith =>
      __$$_BasketCopyWithImpl<_$_Basket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketToJson(
      this,
    );
  }
}

abstract class _Basket implements Basket {
  const factory _Basket(
      {required final int id,
      required final String images,
      required final int price,
      required final String title}) = _$_Basket;

  factory _Basket.fromJson(Map<String, dynamic> json) = _$_Basket.fromJson;

  @override
  int get id;
  @override
  String get images;
  @override
  int get price;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_BasketCopyWith<_$_Basket> get copyWith =>
      throw _privateConstructorUsedError;
}

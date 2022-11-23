// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'first_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeStore _$HomeStoreFromJson(Map<String, dynamic> json) {
  return _HomeStore.fromJson(json);
}

/// @nodoc
mixin _$HomeStore {
  int get id => throw _privateConstructorUsedError;
  bool get is_new => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  bool get is_buy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStoreCopyWith<HomeStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoreCopyWith<$Res> {
  factory $HomeStoreCopyWith(HomeStore value, $Res Function(HomeStore) then) =
      _$HomeStoreCopyWithImpl<$Res, HomeStore>;
  @useResult
  $Res call(
      {int id,
      bool is_new,
      String title,
      String subtitle,
      String picture,
      bool is_buy});
}

/// @nodoc
class _$HomeStoreCopyWithImpl<$Res, $Val extends HomeStore>
    implements $HomeStoreCopyWith<$Res> {
  _$HomeStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_new = null,
    Object? title = null,
    Object? subtitle = null,
    Object? picture = null,
    Object? is_buy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_new: null == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      is_buy: null == is_buy
          ? _value.is_buy
          : is_buy // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStoreCopyWith<$Res> implements $HomeStoreCopyWith<$Res> {
  factory _$$_HomeStoreCopyWith(
          _$_HomeStore value, $Res Function(_$_HomeStore) then) =
      __$$_HomeStoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool is_new,
      String title,
      String subtitle,
      String picture,
      bool is_buy});
}

/// @nodoc
class __$$_HomeStoreCopyWithImpl<$Res>
    extends _$HomeStoreCopyWithImpl<$Res, _$_HomeStore>
    implements _$$_HomeStoreCopyWith<$Res> {
  __$$_HomeStoreCopyWithImpl(
      _$_HomeStore _value, $Res Function(_$_HomeStore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_new = null,
    Object? title = null,
    Object? subtitle = null,
    Object? picture = null,
    Object? is_buy = null,
  }) {
    return _then(_$_HomeStore(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_new: null == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      is_buy: null == is_buy
          ? _value.is_buy
          : is_buy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeStore implements _HomeStore {
  const _$_HomeStore(
      {required this.id,
      this.is_new = false,
      required this.title,
      required this.subtitle,
      required this.picture,
      required this.is_buy});

  factory _$_HomeStore.fromJson(Map<String, dynamic> json) =>
      _$$_HomeStoreFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool is_new;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String picture;
  @override
  final bool is_buy;

  @override
  String toString() {
    return 'HomeStore(id: $id, is_new: $is_new, title: $title, subtitle: $subtitle, picture: $picture, is_buy: $is_buy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStore &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.is_buy, is_buy) || other.is_buy == is_buy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, is_new, title, subtitle, picture, is_buy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStoreCopyWith<_$_HomeStore> get copyWith =>
      __$$_HomeStoreCopyWithImpl<_$_HomeStore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeStoreToJson(
      this,
    );
  }
}

abstract class _HomeStore implements HomeStore {
  const factory _HomeStore(
      {required final int id,
      final bool is_new,
      required final String title,
      required final String subtitle,
      required final String picture,
      required final bool is_buy}) = _$_HomeStore;

  factory _HomeStore.fromJson(Map<String, dynamic> json) =
      _$_HomeStore.fromJson;

  @override
  int get id;
  @override
  bool get is_new;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get picture;
  @override
  bool get is_buy;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStoreCopyWith<_$_HomeStore> get copyWith =>
      throw _privateConstructorUsedError;
}

BestSeller _$BestSellerFromJson(Map<String, dynamic> json) {
  return _BestSeller.fromJson(json);
}

/// @nodoc
mixin _$BestSeller {
  int get id => throw _privateConstructorUsedError;
  bool get is_favorites => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price_without_discount => throw _privateConstructorUsedError;
  int get discount_price => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellerCopyWith<BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerCopyWith<$Res> {
  factory $BestSellerCopyWith(
          BestSeller value, $Res Function(BestSeller) then) =
      _$BestSellerCopyWithImpl<$Res, BestSeller>;
  @useResult
  $Res call(
      {int id,
      bool is_favorites,
      String title,
      int price_without_discount,
      int discount_price,
      String picture});
}

/// @nodoc
class _$BestSellerCopyWithImpl<$Res, $Val extends BestSeller>
    implements $BestSellerCopyWith<$Res> {
  _$BestSellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_favorites = null,
    Object? title = null,
    Object? price_without_discount = null,
    Object? discount_price = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_favorites: null == is_favorites
          ? _value.is_favorites
          : is_favorites // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price_without_discount: null == price_without_discount
          ? _value.price_without_discount
          : price_without_discount // ignore: cast_nullable_to_non_nullable
              as int,
      discount_price: null == discount_price
          ? _value.discount_price
          : discount_price // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BestSellerCopyWith<$Res>
    implements $BestSellerCopyWith<$Res> {
  factory _$$_BestSellerCopyWith(
          _$_BestSeller value, $Res Function(_$_BestSeller) then) =
      __$$_BestSellerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool is_favorites,
      String title,
      int price_without_discount,
      int discount_price,
      String picture});
}

/// @nodoc
class __$$_BestSellerCopyWithImpl<$Res>
    extends _$BestSellerCopyWithImpl<$Res, _$_BestSeller>
    implements _$$_BestSellerCopyWith<$Res> {
  __$$_BestSellerCopyWithImpl(
      _$_BestSeller _value, $Res Function(_$_BestSeller) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? is_favorites = null,
    Object? title = null,
    Object? price_without_discount = null,
    Object? discount_price = null,
    Object? picture = null,
  }) {
    return _then(_$_BestSeller(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_favorites: null == is_favorites
          ? _value.is_favorites
          : is_favorites // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price_without_discount: null == price_without_discount
          ? _value.price_without_discount
          : price_without_discount // ignore: cast_nullable_to_non_nullable
              as int,
      discount_price: null == discount_price
          ? _value.discount_price
          : discount_price // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BestSeller implements _BestSeller {
  const _$_BestSeller(
      {required this.id,
      required this.is_favorites,
      required this.title,
      required this.price_without_discount,
      required this.discount_price,
      required this.picture});

  factory _$_BestSeller.fromJson(Map<String, dynamic> json) =>
      _$$_BestSellerFromJson(json);

  @override
  final int id;
  @override
  final bool is_favorites;
  @override
  final String title;
  @override
  final int price_without_discount;
  @override
  final int discount_price;
  @override
  final String picture;

  @override
  String toString() {
    return 'BestSeller(id: $id, is_favorites: $is_favorites, title: $title, price_without_discount: $price_without_discount, discount_price: $discount_price, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestSeller &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_favorites, is_favorites) ||
                other.is_favorites == is_favorites) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price_without_discount, price_without_discount) ||
                other.price_without_discount == price_without_discount) &&
            (identical(other.discount_price, discount_price) ||
                other.discount_price == discount_price) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, is_favorites, title,
      price_without_discount, discount_price, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      __$$_BestSellerCopyWithImpl<_$_BestSeller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BestSellerToJson(
      this,
    );
  }
}

abstract class _BestSeller implements BestSeller {
  const factory _BestSeller(
      {required final int id,
      required final bool is_favorites,
      required final String title,
      required final int price_without_discount,
      required final int discount_price,
      required final String picture}) = _$_BestSeller;

  factory _BestSeller.fromJson(Map<String, dynamic> json) =
      _$_BestSeller.fromJson;

  @override
  int get id;
  @override
  bool get is_favorites;
  @override
  String get title;
  @override
  int get price_without_discount;
  @override
  int get discount_price;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

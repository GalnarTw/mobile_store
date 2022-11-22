// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'market_model.dart';

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
class _$_HomeStore with DiagnosticableTreeMixin implements _HomeStore {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeStore(id: $id, is_new: $is_new, title: $title, subtitle: $subtitle, picture: $picture, is_buy: $is_buy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeStore'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('is_new', is_new))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('is_buy', is_buy));
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
class _$_BestSeller with DiagnosticableTreeMixin implements _BestSeller {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BestSeller(id: $id, is_favorites: $is_favorites, title: $title, price_without_discount: $price_without_discount, discount_price: $discount_price, picture: $picture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BestSeller'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('is_favorites', is_favorites))
      ..add(DiagnosticsProperty('title', title))
      ..add(
          DiagnosticsProperty('price_without_discount', price_without_discount))
      ..add(DiagnosticsProperty('discount_price', discount_price))
      ..add(DiagnosticsProperty('picture', picture));
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

Second _$SecondFromJson(Map<String, dynamic> json) {
  return _Second.fromJson(json);
}

/// @nodoc
mixin _$Second {
  String get CPU => throw _privateConstructorUsedError;
  String get camera => throw _privateConstructorUsedError;
  List<String> get capacity => throw _privateConstructorUsedError;
  List<String> get color => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  bool get isFavorites => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get sd => throw _privateConstructorUsedError;
  String get ssd => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondCopyWith<Second> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondCopyWith<$Res> {
  factory $SecondCopyWith(Second value, $Res Function(Second) then) =
      _$SecondCopyWithImpl<$Res, Second>;
  @useResult
  $Res call(
      {String CPU,
      String camera,
      List<String> capacity,
      List<String> color,
      String id,
      List<String> images,
      bool isFavorites,
      int price,
      double rating,
      String sd,
      String ssd,
      String title});
}

/// @nodoc
class _$SecondCopyWithImpl<$Res, $Val extends Second>
    implements $SecondCopyWith<$Res> {
  _$SecondCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CPU = null,
    Object? camera = null,
    Object? capacity = null,
    Object? color = null,
    Object? id = null,
    Object? images = null,
    Object? isFavorites = null,
    Object? price = null,
    Object? rating = null,
    Object? sd = null,
    Object? ssd = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      CPU: null == CPU
          ? _value.CPU
          : CPU // ignore: cast_nullable_to_non_nullable
              as String,
      camera: null == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      sd: null == sd
          ? _value.sd
          : sd // ignore: cast_nullable_to_non_nullable
              as String,
      ssd: null == ssd
          ? _value.ssd
          : ssd // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecondCopyWith<$Res> implements $SecondCopyWith<$Res> {
  factory _$$_SecondCopyWith(_$_Second value, $Res Function(_$_Second) then) =
      __$$_SecondCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String CPU,
      String camera,
      List<String> capacity,
      List<String> color,
      String id,
      List<String> images,
      bool isFavorites,
      int price,
      double rating,
      String sd,
      String ssd,
      String title});
}

/// @nodoc
class __$$_SecondCopyWithImpl<$Res>
    extends _$SecondCopyWithImpl<$Res, _$_Second>
    implements _$$_SecondCopyWith<$Res> {
  __$$_SecondCopyWithImpl(_$_Second _value, $Res Function(_$_Second) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CPU = null,
    Object? camera = null,
    Object? capacity = null,
    Object? color = null,
    Object? id = null,
    Object? images = null,
    Object? isFavorites = null,
    Object? price = null,
    Object? rating = null,
    Object? sd = null,
    Object? ssd = null,
    Object? title = null,
  }) {
    return _then(_$_Second(
      CPU: null == CPU
          ? _value.CPU
          : CPU // ignore: cast_nullable_to_non_nullable
              as String,
      camera: null == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value._capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: null == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      sd: null == sd
          ? _value.sd
          : sd // ignore: cast_nullable_to_non_nullable
              as String,
      ssd: null == ssd
          ? _value.ssd
          : ssd // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Second with DiagnosticableTreeMixin implements _Second {
  const _$_Second(
      {required this.CPU,
      required this.camera,
      required final List<String> capacity,
      required final List<String> color,
      required this.id,
      required final List<String> images,
      required this.isFavorites,
      required this.price,
      required this.rating,
      required this.sd,
      required this.ssd,
      required this.title})
      : _capacity = capacity,
        _color = color,
        _images = images;

  factory _$_Second.fromJson(Map<String, dynamic> json) =>
      _$$_SecondFromJson(json);

  @override
  final String CPU;
  @override
  final String camera;
  final List<String> _capacity;
  @override
  List<String> get capacity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capacity);
  }

  final List<String> _color;
  @override
  List<String> get color {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_color);
  }

  @override
  final String id;
  final List<String> _images;
  @override
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final bool isFavorites;
  @override
  final int price;
  @override
  final double rating;
  @override
  final String sd;
  @override
  final String ssd;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Second(CPU: $CPU, camera: $camera, capacity: $capacity, color: $color, id: $id, images: $images, isFavorites: $isFavorites, price: $price, rating: $rating, sd: $sd, ssd: $ssd, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Second'))
      ..add(DiagnosticsProperty('CPU', CPU))
      ..add(DiagnosticsProperty('camera', camera))
      ..add(DiagnosticsProperty('capacity', capacity))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('isFavorites', isFavorites))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('sd', sd))
      ..add(DiagnosticsProperty('ssd', ssd))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Second &&
            (identical(other.CPU, CPU) || other.CPU == CPU) &&
            (identical(other.camera, camera) || other.camera == camera) &&
            const DeepCollectionEquality().equals(other._capacity, _capacity) &&
            const DeepCollectionEquality().equals(other._color, _color) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isFavorites, isFavorites) ||
                other.isFavorites == isFavorites) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.sd, sd) || other.sd == sd) &&
            (identical(other.ssd, ssd) || other.ssd == ssd) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      CPU,
      camera,
      const DeepCollectionEquality().hash(_capacity),
      const DeepCollectionEquality().hash(_color),
      id,
      const DeepCollectionEquality().hash(_images),
      isFavorites,
      price,
      rating,
      sd,
      ssd,
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecondCopyWith<_$_Second> get copyWith =>
      __$$_SecondCopyWithImpl<_$_Second>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecondToJson(
      this,
    );
  }
}

abstract class _Second implements Second {
  const factory _Second(
      {required final String CPU,
      required final String camera,
      required final List<String> capacity,
      required final List<String> color,
      required final String id,
      required final List<String> images,
      required final bool isFavorites,
      required final int price,
      required final double rating,
      required final String sd,
      required final String ssd,
      required final String title}) = _$_Second;

  factory _Second.fromJson(Map<String, dynamic> json) = _$_Second.fromJson;

  @override
  String get CPU;
  @override
  String get camera;
  @override
  List<String> get capacity;
  @override
  List<String> get color;
  @override
  String get id;
  @override
  List<String> get images;
  @override
  bool get isFavorites;
  @override
  int get price;
  @override
  double get rating;
  @override
  String get sd;
  @override
  String get ssd;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_SecondCopyWith<_$_Second> get copyWith =>
      throw _privateConstructorUsedError;
}

Three _$ThreeFromJson(Map<String, dynamic> json) {
  return _Three.fromJson(json);
}

/// @nodoc
mixin _$Three {
  List<Basket> get basket =>
      throw _privateConstructorUsedError; //  required List<String> basket,
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

//  required List<String> basket,
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
  @override //  required List<String> basket,
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

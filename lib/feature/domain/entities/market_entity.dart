
abstract class PhoneMarketEntity {
  List<HomeStoreEntity>? homeStoreEntity;
  List<BestSellerEntity>? bestSellerEntity;
  List<SecondEntity>? secondEntity;
  List<ThreeEntity>? threeEntity;
  PhoneMarketEntity({this.homeStoreEntity, this.bestSellerEntity, this.secondEntity, this.threeEntity});
}

class HomeStoreEntity extends PhoneMarketEntity {
  int id;
  bool isNew;
  String title;
  String subtitle;
  String picture;
  bool isBuy;
  HomeStoreEntity(
      {required this.id,
      required this.isNew,
      required this.title,
      required this.subtitle,
      required this.picture,
      required this.isBuy});
}

class BestSellerEntity extends PhoneMarketEntity {
  int id;
  bool isFavorites;
  String title;
  int priceWithoutDiscount;
  int discountPrice;
  String picture;
  BestSellerEntity(
      {required this.id,
      required this.isFavorites,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.picture});
}


class SecondEntity extends PhoneMarketEntity {
  final String cPU;
  final String camera;
  final List<String> capacity;
  final List<String> color;
  final String id;
  final List<String> images;
  final bool isFavorites;
  final int price;
  final double rating;
  final String sd;
  final String ssd;
  final String title;

  SecondEntity(
    this.cPU,
    this.camera,
    this.capacity,
    this.color,
    this.id,
    this.images,
    this.isFavorites,
    this.price,
    this.rating,
    this.sd,
    this.ssd,
    this.title,
  );
}


class ThreeEntity extends PhoneMarketEntity {
  final List<BasketEntity> basketEntity;
  final String delivery;
  final String id;
  final int total;

  ThreeEntity(
    this.basketEntity,
    this.delivery,
    this.id,
    this.total,
  );
}

class BasketEntity extends PhoneMarketEntity {
  final int id;
  final String images;
  final int price;
  final String title;

  BasketEntity(
    this.id,
    this.images,
    this.price,
    this.title,
  );
}

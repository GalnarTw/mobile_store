
abstract class PhoneMarketEntity {
  List<HomeStoreEntity>? homeStoreEntity;
  List<BestSellerEntity>? bestSellerEntity;
 
  PhoneMarketEntity({this.homeStoreEntity, this.bestSellerEntity, });
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



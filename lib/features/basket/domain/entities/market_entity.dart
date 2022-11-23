
abstract class PhoneMarketEntity {
  
  List<ThreeEntity>? threeEntity;
  PhoneMarketEntity({ this.threeEntity});
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

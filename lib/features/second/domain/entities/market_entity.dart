
abstract class SecondMarketEntity {

  List<SecondEntity>? secondEntity;
 
  SecondMarketEntity({ this.secondEntity, });
}


class SecondEntity extends SecondMarketEntity {
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


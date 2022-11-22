import 'package:dartz/dartz.dart';
import 'package:mobile_store/feature/data/models/market_model.dart';
import '/core/error/failure.dart';
import '../entities/market_entity.dart';

abstract class PhoneMarketRepository {
 Future<Either<Failure, List<Basket>>> searchBasket();
  Future<Either<Failure, List<HomeStore>>> searchHomeStore();
  Future<Either<Failure, List<BestSeller>>> searchBestSeller();
  Future<Either<Failure, List<Second>>> searchSecond();
  Future<Either<Failure, List<Three>>> searchThree();
}

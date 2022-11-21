import 'package:dartz/dartz.dart';
import 'package:mobile_store/feature/data/models/market_model.dart';
import '/core/error/failure.dart';
import '/feature/domain/entities/person_entity.dart';

abstract class PhoneMarketRepository {

  Future<Either<Failure, List<HomeStore>>> searchHomeStore();
  Future<Either<Failure, List<BestSeller>>> searchBestSeller();

}

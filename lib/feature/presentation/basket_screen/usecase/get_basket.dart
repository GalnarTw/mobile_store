import 'package:dartz/dartz.dart';
import '../../../data/models/market_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '../../../domain/repositories/market_repository.dart';


class GetBasket extends Usecase<List<Basket>> {
  final PhoneMarketRepository phoneMarketRepository;

  GetBasket(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<Basket>>> call()
   async {
    return await phoneMarketRepository.searchBasket();
  }
}
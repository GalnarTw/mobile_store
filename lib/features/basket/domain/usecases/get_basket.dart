import 'package:dartz/dartz.dart';
import 'package:mobile_store/features/basket/domain/repositories/basket_repository.dart';
import '../../data/models/basket_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';


class GetBasket extends Usecase<List<Basket>> {
  final BasketRepository phoneMarketRepository;

  GetBasket(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<Basket>>> call()
   async {
    return await phoneMarketRepository.searchBasket();
  }
}
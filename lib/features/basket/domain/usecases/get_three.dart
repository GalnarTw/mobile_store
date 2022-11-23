import 'package:dartz/dartz.dart';
import 'package:mobile_store/features/basket/domain/repositories/basket_repository.dart';
import '../../data/models/basket_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class GetThree extends Usecase<List<Three>> {
  final BasketRepository phoneMarketRepository;

  GetThree(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<Three>>> call()
   async {
    return await phoneMarketRepository.searchThree();
  }
}

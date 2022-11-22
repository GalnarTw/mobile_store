import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
import '../../data/models/market_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '../entities/market_entity.dart';
import '../repositories/market_repository.dart';

class GetHomeStore extends Usecase<List<HomeStore>> {
  final PhoneMarketRepository phoneMarketRepository;

  GetHomeStore(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<HomeStore>>> call()
   async {
    return await phoneMarketRepository.searchHomeStore();
  }
}
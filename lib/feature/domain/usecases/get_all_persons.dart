import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
import '../../data/models/market_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '/feature/domain/entities/person_entity.dart';
import '/feature/domain/repositories/person_repository.dart';

class GetBestSeller extends Usecase<List<BestSeller>> {
  final PhoneMarketRepository phoneMarketRepository;

  GetBestSeller(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<BestSeller>>> call()
   async {
    return await phoneMarketRepository.searchBestSeller();
  }
}
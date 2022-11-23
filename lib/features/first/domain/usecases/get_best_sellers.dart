import 'package:dartz/dartz.dart';
import 'package:mobile_store/features/first/domain/repositories/first_repository.dart';
import '../../data/models/first_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class GetBestSeller extends Usecase<List<BestSeller>> {
  final FirstRepository phoneMarketRepository;

  GetBestSeller(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<BestSeller>>> call()
   async {
    return await phoneMarketRepository.searchBestSeller();
  }
}
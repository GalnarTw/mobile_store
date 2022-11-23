// ignore_for_file: file_names
import 'package:dartz/dartz.dart';
import '../../../data/models/market_model.dart';
import '../../../domain/repositories/market_repository.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class GetSecond extends Usecase<List<Second>> {
  final PhoneMarketRepository phoneMarketRepository;

  GetSecond(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<Second>>> call()
   async {
    return await phoneMarketRepository.searchSecond();
  }
}



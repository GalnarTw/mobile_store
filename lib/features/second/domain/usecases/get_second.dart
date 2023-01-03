// ignore_for_file: file_names
import 'package:dartz/dartz.dart';
import 'package:mobile_store/features/second/domain/repositories/second_repository.dart';
import '../../data/models/second_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class GetSecond extends Usecase<List<Second>> {
  final SecondRepository phoneMarketRepository;

  GetSecond(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<Second>>> call()
   async {
    return await phoneMarketRepository.searchSecond();
  }
}



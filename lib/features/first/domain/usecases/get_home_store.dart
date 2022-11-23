import 'package:dartz/dartz.dart';
import 'package:mobile_store/features/first/domain/repositories/first_repository.dart';
import '../../data/models/first_model.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class GetHomeStore extends Usecase<List<HomeStore>> {
  final FirstRepository phoneMarketRepository;

  GetHomeStore(this.phoneMarketRepository);

  @override
  Future<Either<Failure, List<HomeStore>>> call()
   async {
    return await phoneMarketRepository.searchHomeStore();
  }
}
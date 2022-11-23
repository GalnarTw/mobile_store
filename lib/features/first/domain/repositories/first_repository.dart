import 'package:dartz/dartz.dart';
import '../../data/models/first_model.dart';
import '/core/error/failure.dart';

abstract class FirstRepository {

  Future<Either<Failure, List<HomeStore>>> searchHomeStore();
  Future<Either<Failure, List<BestSeller>>> searchBestSeller();
  
}

import 'package:dartz/dartz.dart';
import '../../data/models/second_model.dart';
import '/core/error/failure.dart';

abstract class SecondRepository {
 
  Future<Either<Failure, List<Second>>> searchSecond();
 
}

import 'package:dartz/dartz.dart';
import '../../data/models/basket_model.dart';
import '/core/error/failure.dart';

abstract class BasketRepository {
 Future<Either<Failure, List<Basket>>> searchBasket();
  Future<Either<Failure, List<Three>>> searchThree();
}

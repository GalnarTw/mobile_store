import 'package:dartz/dartz.dart';
import 'package:mobile_store/core/error/exception.dart';
import 'package:mobile_store/core/error/failure.dart';
import 'package:mobile_store/core/platform/network_info.dart';
import 'package:mobile_store/features/basket/domain/repositories/basket_repository.dart';

import '../datasources/basket_remote_data_source.dart';
import '../models/basket_model.dart';

class BasketRepositoryImpl implements BasketRepository {
  final BasketRemoteDataSource remoteDataSource;
  
   final NetworkInfo networkInfo;

  BasketRepositoryImpl({required this.remoteDataSource,required this.networkInfo, });


  

  @override
  Future<Either<Failure, List<Basket>>> searchBasket(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchBasket = 
        await remoteDataSource.searchBasket();
        return Right(remoteSearchBasket);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
        return Left(CacheFailure());
    }
  }


  @override
  Future<Either<Failure, List<Three>>> searchThree(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchThree = 
        await remoteDataSource.searchThree();
        return Right(remoteSearchThree);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
        return Left(CacheFailure());
    }
  }


  
}




import 'package:dartz/dartz.dart';
import 'package:mobile_store/core/error/exception.dart';

import '../../../core/error/failure.dart';
import '../../../core/platform/network_info.dart';
import '../../domain/entities/market_entity.dart';
import '../../domain/repositories/market_repository.dart';
import '../datasources/person_remote_data_source.dart';
import '../models/market_model.dart';

class MarketRepositoryImpl implements PhoneMarketRepository {
  final PhoneMarketRemoteDataSource remoteDataSource;
  
   final NetworkInfo networkInfo;

  MarketRepositoryImpl({required this.remoteDataSource,required this.networkInfo, });


  @override
  Future<Either<Failure, List<BestSeller>>> searchBestSeller(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchBestSeller = 
        await remoteDataSource.searchBestSeller();
        // localDataSource.personsToCache(remoteSearchBestSeller);
        return Right(remoteSearchBestSeller);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
        return Left(CacheFailure());
    }
  }
  
  @override
  Future<Either<Failure, List<HomeStore>>> searchHomeStore(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchHomeStore = 
        await remoteDataSource.searchHomeStore();
        return Right(remoteSearchHomeStore);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
        return Left(CacheFailure());
    }
  }
  

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
  Future<Either<Failure, List<Second>>> searchSecond(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchSecond = 
        await remoteDataSource.searchSecond();
        return Right(remoteSearchSecond);
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


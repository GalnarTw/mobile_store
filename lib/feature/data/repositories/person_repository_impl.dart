

import 'package:dartz/dartz.dart';
import 'package:mobile_store/core/error/exception.dart';

import '../../../core/error/failure.dart';
import '../../../core/platform/network_info.dart';
import '../../domain/entities/person_entity.dart';
import '../../domain/repositories/person_repository.dart';
import '../datasources/person_remote_data_source.dart';
import '../models/market_model.dart';

class MarketRepositoryImpl implements PhoneMarketRepository {
  final PhoneMarketRemoteDataSource remoteDataSource;
  
   final NetworkInfo networkInfo;

  MarketRepositoryImpl(this.remoteDataSource, this.networkInfo);



  // @override
  // Future<Either<Failure, List<PhoneMarketEntity>>> searchBestSeller() async {
  //   return await _getPersons(() {
  //     return remoteDataSource.searchBestSeller();
  //   });
  // }

  // @override
  // Future<Either<Failure, List<PhoneMarketEntity>>> searchPhone() async {
  //   return await _getPersons(() {
  //     return remoteDataSource.searchPhone();
  //   });
  // }
  

  

// Future<Either<Failure, List<PhoneMarketEntity>>> searchBestSeller() {
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
      // try {
        // final localPerson = await localDataSource.getLastPersonsFromCache();
        // return Right(localPerson);
      // } on CacheException {
        return Left(CacheFailure());
      // }
      
    }
  }
  
  @override
  Future<Either<Failure, List<HomeStore>>> searchHomeStore(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchHomeStore = 
        await remoteDataSource.searchHomeStore();
        // localDataSource.personsToCache(remoteSearchBestSeller);
        return Right(remoteSearchHomeStore);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      // try {
        // final localPerson = await localDataSource.getLastPersonsFromCache();
        // return Right(localPerson);
      // } on CacheException {
        return Left(CacheFailure());
      // }
      
    }
  }
  
    
  
}
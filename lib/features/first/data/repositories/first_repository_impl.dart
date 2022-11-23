import 'package:dartz/dartz.dart';
import 'package:mobile_store/core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/first_repository.dart';
import '../datasources/first_remote_data_source.dart';
import '../models/first_model.dart';

class FirstRepositoryImpl implements FirstRepository {
  final FirstRemoteDataSource remoteDataSource;
  
   final NetworkInfo networkInfo;

  FirstRepositoryImpl({required this.remoteDataSource,required this.networkInfo, });


  @override
  Future<Either<Failure, List<BestSeller>>> searchBestSeller(
     ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchBestSeller = 
        await remoteDataSource.searchBestSeller();
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
}


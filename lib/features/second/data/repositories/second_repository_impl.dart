import 'package:dartz/dartz.dart';
import 'package:mobile_store/core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/second_repository.dart';
import '../datasources/second_remote_data_source.dart';
import '../models/second_model.dart';

class SecondRepositoryImpl implements SecondRepository {
  final SecondRemoteDataSource remoteDataSource;

  final NetworkInfo networkInfo;

  SecondRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Second>>> searchSecond() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSearchSecond = await remoteDataSource.searchSecond();
        return Right(remoteSearchSecond);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }
}

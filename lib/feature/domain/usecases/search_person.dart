import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '/feature/domain/entities/person_entity.dart';
import '/feature/domain/repositories/person_repository.dart';

// class SearchPhoneMarket extends Usecase<List<PhoneMarketEntity> > {
//   final PhoneMarketRepository phoneMarketRepository;

//   SearchPhoneMarket(this.phoneMarketRepository);

//   @override
//   Future<Either<Failure, List<PhoneMarketEntity>>> call() 
//   async {
//     return await phoneMarketRepository.searchBestSeller(
//       // params.query,params.page
//       );
//   }
// }
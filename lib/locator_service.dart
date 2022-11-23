
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mobile_store/feature/domain/usecases/get_Second.dart';
import 'package:mobile_store/feature/domain/usecases/get_basket.dart';
import 'package:mobile_store/feature/domain/usecases/get_three.dart';
import 'core/platform/network_info.dart';
import 'feature/data/datasources/person_remote_data_source.dart';
import 'feature/data/repositories/person_repository_impl.dart';
import 'feature/domain/repositories/market_repository.dart';
import 'feature/domain/usecases/get_best_sellers.dart';
import 'feature/domain/usecases/get_home_store.dart';

import 'package:http/http.dart' as http;

import 'feature/presentation/cubit/market_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => MarketCubit(
      getBestSeller: sl(),
      getHomeStore: sl(),
      getBasket: sl(),
      getThree: sl(),
      getSecond: sl(),
      
    ),
  );
  // UseCases
  sl.registerLazySingleton(() => GetHomeStore(sl()));
  sl.registerLazySingleton(() => GetBestSeller(sl()));
sl.registerLazySingleton(() => GetBasket(sl()));
sl.registerLazySingleton(() => GetSecond(sl()));
sl.registerLazySingleton(() => GetThree(sl()));

  // Repository
  sl.registerLazySingleton<PhoneMarketRepository>(
    () => MarketRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<PhoneMarketRemoteDataSource>(
    () => PhoneMarketRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(sl()),
  );
  
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

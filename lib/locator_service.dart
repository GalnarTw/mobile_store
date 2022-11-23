
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
//Repository
import 'package:mobile_store/features/first/domain/repositories/first_repository.dart';
import 'package:mobile_store/features/second/domain/repositories/second_repository.dart';
import 'package:mobile_store/features/basket/domain/repositories/basket_repository.dart';
//Repository Impl
import 'features/first/data/repositories/first_repository_impl.dart';
import 'features/second/data/repositories/second_repository_impl.dart';
import 'features/basket/data/repositories/basket_repository_impl.dart';
//Remote Data Source
import 'package:mobile_store/features/first/data/datasources/first_remote_data_source.dart';
import 'package:mobile_store/features/second/data/datasources/second_remote_data_source.dart';
import 'package:mobile_store/features/basket/data/datasources/basket_remote_data_source.dart';

import 'core/platform/network_info.dart';
import 'cubit/market_cubit.dart';
import 'package:http/http.dart' as http;
//Usecases
import 'features/first/domain/usecases/get_best_sellers.dart';
import 'features/first/domain/usecases/get_home_store.dart';
import 'features/second/domain/usecases/get_second.dart';
import 'package:mobile_store/features/basket/domain/usecases/get_basket.dart';
import 'package:mobile_store/features/basket/domain/usecases/get_three.dart';

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
sl.registerLazySingleton<FirstRepository>(
    () => FirstRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<SecondRepository>(
    () => SecondRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<BasketRepository>(
    () => BasketRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<FirstRemoteDataSource>(
    () => FirstRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  
  sl.registerLazySingleton<SecondRemoteDataSource>(
    () => SecondRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<BasketRemoteDataSource>(
    () => BasketRemoteDataSourceImpl(
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

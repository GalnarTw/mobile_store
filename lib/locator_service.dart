import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/platform/network_info.dart';
import 'feature/data/datasources/person_remote_data_source.dart';
import 'feature/data/repositories/person_repository_impl.dart';
import 'feature/domain/repositories/person_repository.dart';
import 'feature/domain/usecases/get_all_persons.dart';
import 'feature/domain/usecases/search_person.dart';
import 'feature/presentation/bloc/market_bloc.dart';

import 'package:http/http.dart' as http;

import 'feature/presentation/cubit/market_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  // sl.registerFactory(
  //   () => MarketCubit(getAllPersons: sl()),
  // );
  sl.registerFactory(
    () => MarketBloc(getBestSeller: sl()),
  );

  // UseCases
  // sl.registerLazySingleton(() => GetAllPersons(sl()));
  sl.registerLazySingleton(() => GetBestSeller(sl()));

  // Repository
  sl.registerLazySingleton<PhoneMarketRepository>(
    () => MarketRepositoryImpl(
      remoteDataSource: sl(),
      // localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<PhoneMarketRemoteDataSource>(
    () => PhoneMarketRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  // sl.registerLazySingleton<PhoneMarketLocalDataSource>(
  //   () => PhoneMarketLocalDataSourceImpl(sharedPreferences: sl()),
  // );

  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(sl()),
  );

  // External
  final  sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
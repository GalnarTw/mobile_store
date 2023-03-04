import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/basket/data/models/basket_model.dart';
import '../../features/first/data/models/first_model.dart';
import '../../features/second/data/models/second_model.dart';

part 'retrofit_api.g.dart';

@RestApi()
abstract class RetrofitApi {
  factory RetrofitApi(Dio dio, {String baseUrl}) = _RetrofitApi;

  // @GET("https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175")
  // Future <List<HomeStore>> toHomeStore();
  
  // @GET("https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175")
  // Future <List<BestSeller>> toBestSeller();
  
  @GET("https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175")
  Future<PhoneMarketModelHome> toFirst();

  @GET("https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5")
  Future<Second> toSecond();

  // @GET("https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149")
  // Future<Basket> toBasket();

 @GET("https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149")
  Future<Three> toBasket();

  static RetrofitApi create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return RetrofitApi(dio);
  }
}
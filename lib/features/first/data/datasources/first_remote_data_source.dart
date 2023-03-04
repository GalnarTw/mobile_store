import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_store/component/retrofit/retrofit_api.dart';
import '/core/error/exception.dart';
import '../models/first_model.dart';

abstract class FirstRemoteDataSource {
  Future<List<HomeStore>> searchHomeStore();
  Future<List<BestSeller>> searchBestSeller();
}

class FirstRemoteDataSourceImpl implements FirstRemoteDataSource {
  final RetrofitApi retrofitApi;
  FirstRemoteDataSourceImpl({
    required this.retrofitApi,
  });

  @override
  Future<List<HomeStore>> searchHomeStore() async {
    var lisat = await retrofitApi.toFirst();
    return lisat.homeStore!;
  }

  @override
  Future<List<BestSeller>> searchBestSeller() async {
    var lisat = await retrofitApi.toFirst();
    return lisat.bestSeller!;
  }
}







  //   ) async {
  //   final response = await client.get(
  //         Uri.parse('https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'),
  //          headers: {'Content-Type': 'application/json'});
  //   if (response.statusCode == 200) {
  //     final market = json.decode(response.body);
  //     return (market['home_store'] as List)
  //         .map((market) => HomeStore.fromJson(market))
  //         .toList();
  //   } else {
  //     throw ServerException();





  
//     ) async {
//     final response = await client.get(
//           Uri.parse('https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'),
//            headers: {'Content-Type': 'application/json'});
//     if (response.statusCode == 200) {
//       final market = json.decode(response.body);
//       return (market['best_seller'] as List)
//           .map((market) => BestSeller.fromJson(market))
//           .toList();
//     } else {
//       throw ServerException();
//     }
//   }
// }
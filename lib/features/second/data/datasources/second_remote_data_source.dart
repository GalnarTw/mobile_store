import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../component/retrofit/retrofit_api.dart';
import '/core/error/exception.dart';
import '../models/second_model.dart';

abstract class SecondRemoteDataSource {
  Future<List<Second>> searchSecond();
}

class SecondRemoteDataSourceImpl implements SecondRemoteDataSource {
  final RetrofitApi retrofitApi;
  SecondRemoteDataSourceImpl({
    required this.retrofitApi,
  });

  @override
  Future<List<Second>> searchSecond() async {
    List<Second> lisar = [await retrofitApi.toSecond()];
    return lisar;
  }
}



//  @override
//   Future<List<Second>> searchSecond(
    
//     ) async {
//     final response = await client.get(
//           Uri.parse('https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5'),
//            headers: {'Content-Type': 'application/json'});
//     if (response.statusCode == 200) {
//       final phone = {'a':[json.decode(response.body)]};
//       return (phone['a'] as List)
//           .map((market) => Second.fromJson(market))
//           .toList();
//     } else {
//       throw ServerException();
//     }
//   }
// }
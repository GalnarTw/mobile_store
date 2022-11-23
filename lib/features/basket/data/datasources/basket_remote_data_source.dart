import 'dart:convert';
import 'package:http/http.dart' as http;
import '/core/error/exception.dart';
import '../models/basket_model.dart';

abstract class BasketRemoteDataSource {
 
  Future<List<Basket>> searchBasket();
  Future<List<Three>> searchThree();
}

class BasketRemoteDataSourceImpl implements BasketRemoteDataSource {
  final http.Client client;

  BasketRemoteDataSourceImpl({required this.client});
 
 @override
  Future<List<Three>> searchThree(
    
    ) async {
    // print(url);
    final response = await client.get(
          Uri.parse('https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149'),
           headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final phone = {'a':[json.decode(response.body)]};
      return (phone['a'] as List)
          .map((market) => Three.fromJson(market))
          .toList();
    } else {
      throw ServerException();
    }
  }

  
 @override
  Future<List<Basket>> searchBasket(
    
    ) async {
    final response = await client.get(
          Uri.parse('https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149'),
           headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final market = json.decode(response.body);
      return (market['basket'] as List)
          .map((market) => Basket.fromJson(market))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
import 'dart:convert';
// import '/feature/domain/entities/person_entity.dart';
// import '/core/error/failure.dart';
// import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_store/feature/domain/entities/market_entity.dart';
import '/core/error/exception.dart';
import '../models/market_model.dart';

abstract class PhoneMarketRemoteDataSource {
  Future<List<HomeStore>> searchHomeStore();
  Future<List<BestSeller>> searchBestSeller();
  Future<List<Basket>> searchBasket();
  Future<List<Second>> searchSecond();
  Future<List<Three>> searchThree();
}

class PhoneMarketRemoteDataSourceImpl implements PhoneMarketRemoteDataSource {
  final http.Client client;

  PhoneMarketRemoteDataSourceImpl({required this.client});
 
 @override
  Future<List<HomeStore>> searchHomeStore(
    
    ) async {
    // print(url);
    final response = await client.get(
          Uri.parse('https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'),
           headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final market = json.decode(response.body);
      return (market['home_store'] as List)
          .map((market) => HomeStore.fromJson(market))
          .toList();
    } else {
      throw ServerException();
    }
  }
  


 @override
  Future<List<BestSeller>> searchBestSeller(
    
    ) async {
    // print(url);
    final response = await client.get(
          Uri.parse('https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'),
           headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final market = json.decode(response.body);
      return (market['best_seller'] as List)
          .map((market) => BestSeller.fromJson(market))
          .toList();
    } else {
      throw ServerException();
    }
  }

 @override
  Future<List<Second>> searchSecond(
    
    ) async {
    // print(url);
    final response = await client.get(
          Uri.parse('https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5'),
           headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      // final market = json.decode(response.body);
      final phone = {'a':[json.decode(response.body)]};
      return (phone['a'] as List)
          .map((market) => Second.fromJson(market))
          .toList();
    } else {
      throw ServerException();
    }
  }



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
    // print(url);
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
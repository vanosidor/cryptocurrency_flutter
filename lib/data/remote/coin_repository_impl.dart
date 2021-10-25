import 'dart:convert';

import 'package:cryptocurrency_flutter/core/constants.dart';
import 'package:cryptocurrency_flutter/core/exception/failure.dart';
import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';
import 'package:cryptocurrency_flutter/domain/repository/coin_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'dto/coin_detail_dto.dart';
import 'dto/coin_dto.dart';

class CoinRepositoryImpl implements CoinRepository {
  final http.Client httpClient;

  CoinRepositoryImpl(this.httpClient);

  @override
  Future<Either<Failure, List<Coin>>> getCoins() async {
    final _response =
        await httpClient.get(Uri.parse('${Constants.baseUrl}/coins'));

    if (_response.statusCode == 200) {
      final _dtos = json
          .decode(_response.body)
          .map((json) => CoinDto.fromJson(json))
          .toList();
      final _coins = List<Coin>.from(_dtos.map((dto) => dto.toCoin()));

      return right(_coins);
    } else {
      return left(ApiFailure());
    }
  }

  @override
  Future<Either<Failure, CoinDetails>> getCoinDetail(
      {required String coinName}) async {
    final _response =
        await httpClient.get(Uri.parse('${Constants.baseUrl}/coins/$coinName'));

    if (_response.statusCode == 200) {
      final _coinDetail =
          CoinDetailDto.fromJson(json.decode(_response.body)).toCoinDetail();

      return right(_coinDetail);
    } else {
      return left(ApiFailure());
    }
  }
}

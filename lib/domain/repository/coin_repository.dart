import 'package:cryptocurrency_flutter/core/exception/failure.dart';
import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';
import 'package:dartz/dartz.dart';

abstract class CoinRepository {
  Future<Either<Failure, List<Coin>>> getCoins();

  Future<Either<Failure, CoinDetails>> getCoinDetail(
      {required String coinName});
}

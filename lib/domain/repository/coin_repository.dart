import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';

abstract class CoinRepository {
  Future<List<Coin>> getCoins();
  Future<CoinDetail> getCoinDetail({required String name});
}
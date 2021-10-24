import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';
import 'package:cryptocurrency_flutter/domain/repository/coin_repository.dart';

class CoinRepositoryImpl implements CoinRepository {
  @override
  Future<CoinDetail> getCoinDetail({required String name}) {
    // TODO: implement getCoinDetail
    throw UnimplementedError();
  }

  @override
  Future<List<Coin>> getCoins() {
    // TODO: implement getCoins
    throw UnimplementedError();
  }
}
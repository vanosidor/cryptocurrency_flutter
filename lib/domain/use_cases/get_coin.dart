import 'package:cryptocurrency_flutter/core/use_case.dart';
import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/domain/repository/coin_repository.dart';

class GetCoinUseCase implements UseCase<List<Coin>, NoParams> {

  final CoinRepository repository;

  GetCoinUseCase(this.repository);

  @override
  Future<List<Coin>> call(NoParams params) async {
    // TODO implement usecase
    // final result = await repository.getCoins();
  }
}


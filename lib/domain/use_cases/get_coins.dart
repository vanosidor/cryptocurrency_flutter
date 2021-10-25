import 'package:cryptocurrency_flutter/core/exception/failure.dart';
import 'package:cryptocurrency_flutter/core/use_case.dart';
import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/domain/repository/coin_repository.dart';
import 'package:dartz/dartz.dart';

class GetCoinsUseCase implements UseCase<List<Coin>, NoParams> {
  final CoinRepository repository;

  GetCoinsUseCase(this.repository);

  @override
  Future<Either<Failure, List<Coin>>> call(NoParams params) async {
    return await repository.getCoins();
  }
}

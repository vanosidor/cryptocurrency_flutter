import 'package:cryptocurrency_flutter/core/exception/failure.dart';
import 'package:cryptocurrency_flutter/core/use_case.dart';
import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';
import 'package:cryptocurrency_flutter/domain/repository/coin_repository.dart';
import 'package:dartz/dartz.dart';

class GetCoinDetailsUseCase
    implements UseCase<CoinDetails, GetCoinDetailParams> {
  final CoinRepository repository;

  GetCoinDetailsUseCase(this.repository);

  @override
  Future<Either<Failure, CoinDetails>> call(GetCoinDetailParams params) async {
    return await repository.getCoinDetail(coinName: params.coinName);
  }
}

class GetCoinDetailParams {
  final String coinName;

  GetCoinDetailParams(this.coinName);
}

import 'package:cryptocurrency_flutter/domain/use_cases/get_coin.dart';
import 'package:cryptocurrency_flutter/presentation/coins_detail/cubit/coin_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinDetailsCubit extends Cubit<CoinDetailsState> {
  final GetCoinDetailsUseCase getCoinDetail;

  CoinDetailsCubit(this.getCoinDetail)
      : super(const CoinDetailsState.loading());

  Future<void> getCoinDetails(String coinName) async {
    emit(const CoinDetailsState.loading());

    final _eitherResult = await getCoinDetail(GetCoinDetailParams(coinName));

    _eitherResult.fold(
        (l) => emit(const CoinDetailsState.error('Coin detail fetch error')),
        (r) => emit(CoinDetailsState.success(r)));
  }
}

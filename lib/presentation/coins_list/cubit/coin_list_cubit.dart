import 'package:cryptocurrency_flutter/core/use_case.dart';
import 'package:cryptocurrency_flutter/domain/use_cases/get_coins.dart';
import 'package:cryptocurrency_flutter/presentation/coins_list/cubit/coin_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinListCubit extends Cubit<CoinListState> {
  final GetCoinsUseCase useCase;

  CoinListCubit(this.useCase) : super(const CoinListState.loading());

  Future<void> fetchCoinList() async {
    emit(const CoinListState.loading());
    final _result = await useCase(NoParams());

    _result.fold((l) => const CoinListState.error('Error on loading coin list'),
        (r) => emit(CoinListState.success(r)));
  }
}
